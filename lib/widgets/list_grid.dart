import 'package:flutter/material.dart';
 
class ListGridState extends StatefulWidget {
  const ListGridState({super.key});

  @override
  State<ListGridState> createState() => _ListGridStateState();
}

class _ListGridStateState extends State<ListGridState> {
  List<String> fruits = ['Orange','Apple','Mango','Banana'];
  // to work with subtitle
  Map fruits_person = {
    'fruits' : ['Orange','Apple','Mango','Banana'],
    'whoAte' : ['Raghav','Aryan','Kritarth','Prabhu'],
  };
 // List<String> whoAte = ['Raghav','Aryan','Kritarth','Prabhu'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Center(child: Text('List and Grid')),
      backgroundColor: Colors.red,
      elevation: 8,
      ),
      body: Container(
        child: Center(
          child:
          ListView.builder(
            itemCount: fruits.length,
            itemBuilder: (context,index){
              return Card(child: ListTile(
                focusColor: Colors.yellow,
                hoverColor: Colors.yellow,
                onTap: ()
                  // using this way, we could print each list elem individually along with some text
                  print(("This is the fruit ${fruits_person['fruits'][index]}"));
                },
                leading: Icon(Icons.person_4_sharp),
                title: Text(fruits_person['fruits'][index]),
                subtitle: Text(fruits_person['whoAte'][index]),
                //Text(fruits[index]) <- this is old way,
               // subtitle: Text(whoAte[index]),
              ),
              );
            },

          ),
        ),
      )
    );
  }
}

 