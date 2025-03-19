import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String selectedValue = 'Orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop down Widget",
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontStyle: FontStyle.italic ),),
        centerTitle: true,
        backgroundColor: Colors.grey,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 70,
              //color: Colors.red,
              width: MediaQuery.of(context).size.width,
              child:
              DropdownButton<String>(
                dropdownColor: Colors.grey.shade200,
                isExpanded: true, // utilises the entire width of the container
                value: selectedValue,
                icon: Icon(Icons.arrow_circle_down_rounded),
               onChanged: (String? newvalue){
                 setState(() {
                   selectedValue = newvalue!;
                 });
               },
                items: <String>[
                'Orange',
                'Apple',
                'Mango',
                'Banana',
                'Grapes',

              ].map<DropdownMenuItem<String>>((String value){
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              ),
            )
          ]
        ),
      )
    );
  }
}
