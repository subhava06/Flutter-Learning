import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';


class LocationWidget extends StatefulWidget {
  const LocationWidget({super.key});

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  Position? position;
  // function for the location
  fetchposition() async { // async since it takes a little time to fetch all the details
    bool serviceEnabled;
    LocationPermission permission ;
     //String latitude ;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if(!serviceEnabled)  {
    Fluttertoast.showToast(msg: 'Location service is disabled');
    } // till here we checked whether location service is enabled on the device or not
    // now take permission from user
    permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied)
      {
        //ask the user for permission
        permission = await Geolocator.requestPermission();
        if(permission == LocationPermission.denied)
          {//if user again denies permission then show this message
            Fluttertoast.showToast(msg: 'You denied the permission');
            return;
          }
      }
     // if location permission is denied forever
    if(permission == LocationPermission.deniedForever)
      {
        Fluttertoast.showToast(msg: 'You denied the permission forever');
        return;
      }
    // if above statements are false then we could proceed to fetch location of the user
    Position currentposition= await Geolocator.getCurrentPosition();

    //update the UI
    setState(() {
      position = currentposition;
      /*latitude = currentposition.latitude.toString();
      print(latitude);*/
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Geolocation'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(position==null? 'Location' : position.toString() // if else
            ,style: TextStyle(
            fontSize: 20,
          ),
          ),
          ElevatedButton(onPressed: (){
            fetchposition(); // call the function, only then it will run
          }, child: Text('Get Location'))
        ],),
      ),
    );
  }
}
