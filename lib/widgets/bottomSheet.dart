import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom sheet widget',
        style: TextStyle(color: Colors.black,
        fontWeight: FontWeight.bold,),),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(child: Text('Show Bottom Sheet'),
        onPressed: (){
          showModalBottomSheet(
           // elevation: ,
            isDismissible: true, // allows tapping anywhere on the screen to remove bottom sheet
            enableDrag: true, // you can drag the bottom sheet to remove it
            backgroundColor: Theme.of(context).primaryColor,
              context: context,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
              builder: (context)
          {
            return Column(
              mainAxisSize: MainAxisSize.min, // removes extra spaces
              children: [
             ListTile(
               title: Text('Orange'),
              subtitle: Text('Karan'),
               onTap: (){print("Oranges are sour and sweet !");},
             ),
              ListTile(
                title: Text('Apple'),
                subtitle: Text('Subhava'),
              ),
              ListTile(
                title: Text('Banana'),
                subtitle: Text('Murali'),
              ),
              ListTile(
                title: Text('Papaya'),
                subtitle: Text('Premchand'),
              ),
            ],);
          });
        },),
      )
    );
  }
}
