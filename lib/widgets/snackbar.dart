import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learning Snackbar Widget"),
        centerTitle: true, // Correct way to center the title
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              action: SnackBarAction(label: 'Undo', // displays a button inside the snackbar
                  onPressed: (){},
                   textColor: Colors.black,
              ),
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20 )),
             // padding: EdgeInsets.all(20),
              behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.grey,
                duration: const Duration(milliseconds: 1000),
                content: Center(
                  child: Text('This is an error',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red,fontStyle: FontStyle.italic,fontSize: 20)),
                ));

            // Correct placement of showSnackBar
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text('Show Snackbar'),
        ),
      ),
    );
  }
}
