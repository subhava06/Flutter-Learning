import 'package:flutter/material.dart';

class buttonWidget extends StatelessWidget {
  const buttonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(

        backgroundColor: Colors.indigo,
        title: Center(child: Text('Buttons',
        style: TextStyle(color: Colors.yellow,),)),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Working of different buttons',
                  style: TextStyle(color: Colors.white60, fontSize: 20,fontWeight: FontWeight.bold, ),
              ),
            ),
            SizedBox(height: 20,),
            TextButton(onPressed: (){},

                style: ButtonStyle(
                  padding: WidgetStateProperty.all(EdgeInsets.all(20),),
                  elevation: WidgetStateProperty.all(20),
                    overlayColor: WidgetStateProperty.all(Colors.yellow),
                    backgroundColor: WidgetStateProperty.all(Colors.cyan)),
                child:
                Text(
                  'Press me',
                style: TextStyle(fontSize: 20, color: Colors.black,))
            ),
            SizedBox(height: 20,),
            Container(
              height: 100,
                width: 200,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Theme.of(context).primaryColor),
                overlayColor: WidgetStateProperty.all(Colors.yellow,),
                  padding: WidgetStateProperty.all(EdgeInsets.all(20)),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  ),
                ),
                onPressed: (){
                print('Like and Share');
              },
                  child: Text(
                      'Press me',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

