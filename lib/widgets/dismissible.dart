import 'package:flutter/material.dart';
class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> fruits = ['Orange','Apple','Mango','Papaya','Banana'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dismissible Widget',
      style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.blueGrey,
      centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context,index)
        {
          final fruit = fruits[index];
          return Dismissible(
              onDismissed: (direction) {
                if(direction==DismissDirection.startToEnd) {
                  //then display a snackbar message
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(fruits[index]),
                  backgroundColor: Colors.yellow,
                  action: SnackBarAction(label: 'Deleted', onPressed: (){}),));
                }
                else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    behavior: SnackBarBehavior.floating,
                    duration: const Duration(milliseconds: 2000),
                    content:Text(fruits[index]),
                    backgroundColor: Colors.green,
                    action: SnackBarAction(label: 'Redo', onPressed: (){}),));
                }
              },
              key: Key(fruit),
              background: Container(color: Colors.red,),
              secondaryBackground: Container(color: Colors.green,),
              child: Card(
                child: ListTile(
                            title: Text(fruits[index]),
                          ),
              )
          );
        },
      ),
    );
  }
}
