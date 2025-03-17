import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          // now create a listView
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                //  color: Colors.red,
                  padding: EdgeInsets.all(10),
                  child: Row(children: [
                    CircleAvatar(radius: 40,
                    backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/OIP.eAhpOAqxLSrqcu4L3D8QsgHaHa?w=166&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text('Tony Stark',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)), Text('email: abc@gmail.com')
                    ],)
                  ]),
                ),
              ),
              ListTile(
                  leading: Icon(Icons.folder),
                  title: Text('My files'),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text('Shared with me'),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('Starred'),
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('Trash'),
              ),
              ListTile(
                leading: Icon(Icons.upload),
                title: Text('Uploads'),
              ),
              ListTile(
                leading: Icon(Icons.download),
                title: Text('My downloads'),
              ),
              Divider(), // creates a line btw widgets
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Drawer'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(child: Center(child: Text('Hey there'))),
    );
  }
}
