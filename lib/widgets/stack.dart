import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learning Stack Widget"),
        centerTitle: true, // Correct way to center the title
        backgroundColor: Colors.redAccent,
      ),
     body: Stack(children: [
       Positioned(
         //top: 100,
          child: Container(
            //color: Colors.red,
           height: 300,
            width: MediaQuery.of(context).size.width,
           decoration: BoxDecoration(
             image:DecorationImage(image: AssetImage('assets/dora1.jpg'),
             fit: BoxFit.fill),
           )
         ),
       ),
       Positioned(
           top: 20, left: 50,
           child: Container(
         height: 20, width: 75, color: Colors.yellow, child: Text('Doraemon'),
       )
       ),
       Align(
         alignment: Alignment.center,
         child: Image.asset('assets/dora2.jpg'),
       ),
       Align(
         alignment: Alignment.bottomCenter,
         child: Image.asset('assets/dora2.jpg'),
       ),

     ],)
































      /*Container(
       color: Colors.blue,
       child: Center(
         child: Stack(children: [
           Positioned(
             bottom: 10,
             left: 20,
             child: Container(height: 300,width: 300,color: Colors.yellow,),
           ),
           Positioned(
             top: 40,
             left: 50,
             child: Container(height: 250,width: 250,color: Colors.red,),
           ),
           Center(
             child: Container(height: 50,width: 50,color: Colors.green,),
           ),
           Center(
             child: Container(height: 25,width: 25,color: Colors.grey,),
           ),

         ],),
       ),
     )*/
    );
  }
}
