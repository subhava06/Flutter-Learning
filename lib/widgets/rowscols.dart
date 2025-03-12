import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Rows and Columns")),
      ) ,
      body: Container(
        width: 200,
        height: 200,
        color: Colors.yellow,
        child: Wrap(
          direction: Axis.vertical,
         alignment: WrapAlignment.spaceEvenly,
         // mainAxisAlignment: MainAxisAlignment.start,
         // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           // Text("hsdiofhdoifnsdoincvosdnvsoinsdivnsdindndvoinvoivnsdosdpvso"),
            Container(height: 60, width:50, color: Colors.red),
            Container(height: 60, width:50, color: Colors.blue),
            Container(height: 60, width:50, color: Colors.red),
            Container(height: 60, width:50, color: Colors.blue),
            Container(height: 60, width:50, color: Colors.orange),

          ],
        )
      ),
    );
  }
}
