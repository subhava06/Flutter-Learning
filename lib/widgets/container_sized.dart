import 'package:flutter/material.dart';



class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        //backgroundColor: Colors.deepOrange,
          title: const Center(child: Text('Container and sized box'))),
      body: Center(
             child: Container(
               padding: EdgeInsets.all(10),
               //color: Colors.blue,
               height: 150,
               width: 150,
               decoration: BoxDecoration(color: Colors.deepPurpleAccent, borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(20),
                   bottomRight: Radius.circular(20)),
               boxShadow: [BoxShadow (
                   blurRadius: 20,
                 spreadRadius: 5,
                 color: Colors.grey,
               )

                   ] ),

               child: Center(
                 child: Container(margin:EdgeInsets.all(10),color: Colors.red),
                // Text('Hello',style: TextStyle(color:Colors.black, fontSize: 20),
                 ),
               ),
             ),
           );


      //SizedBox(height: 100, width: 50, child: Text('Hello'),



  }
}