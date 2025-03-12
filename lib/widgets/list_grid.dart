import 'package:flutter/material.dart';
 
class ListGridState extends StatefulWidget {
  const ListGridState({super.key});

  @override
  State<ListGridState> createState() => _ListGridStateState();
}

class _ListGridStateState extends State<ListGridState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Center(child: Text('List and Grid')),
      backgroundColor: Colors.red,
      elevation: 8,
      ),
      body: Center(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Karan'),
                ),
              ),
            SizedBox(height: 15),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Karan'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Karan'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Karan'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Karan'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Karan'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Karan'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Karan'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Karan'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Karan'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Karan'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Karan'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Karan'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Karan'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Karan'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Karan'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Karan'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Karan'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Karan'),
              ),
            ),

          ],
        ),
      )
    );
  }
}

 