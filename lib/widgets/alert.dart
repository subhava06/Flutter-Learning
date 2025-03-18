import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog',
        style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold,)),
       centerTitle: true,
      backgroundColor: Colors.cyan,),
     body: Center(
       child: ElevatedButton(onPressed: (){
         showMyDialog(context);
       }, child: Text('Show Alert')),
     )
    );
  }
}

Future<void> showMyDialog(BuildContext context)async {
  return showDialog(context: context,
      builder: (BuildContext context)
  {
    return AlertDialog(
      elevation: 0,
      backgroundColor: Colors.brown,
     // scrollable: true,//when the content is more than the height, make it true
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: Text('This is an alert'),
      content: SingleChildScrollView( // this gives appropriate size to the the dialog box to adjust acc to the content
        child: ListBody(
          children: [
            Text('This is a demo'),
            Text('This is Subhava Ojha'),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: (){}, child: Text('Approve')),
        TextButton(onPressed: (){
          Navigator.pop(context); // on clicking cancel, it closes the dialog box
        }, child: Text('Cancel')),
      ],
    );
  });
}

