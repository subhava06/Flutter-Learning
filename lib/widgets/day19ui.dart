import 'package:flutter/material.dart';

class Day19 extends StatefulWidget {
  const Day19({super.key});

  @override
  State<Day19> createState() => _Day19State();
}

class _Day19State extends State<Day19> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          // Stack Section
          Stack(
            children: [
              Container(
                height: 500,
               // color: Colors.yellow,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 450,
                        //color: Colors.red,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/madrid.webp'),
                               fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20, top: 40,
                      child:
                    Container(
                      child: Icon(Icons.arrow_back),
                    ),
                    ),
                    Positioned(
                      right: 20, top: 40,
                      child:
                      Container(
                        child: Icon(Icons.favorite_outline),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 20,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/random.jpeg'),

                        radius: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Info Section
          Container(
            padding: EdgeInsets.all(10),
            //color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Madrid City Tour for Designers',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'This is some random description of the topic',
                  style: TextStyle(fontSize: 15, color: Colors.grey.shade200),
                ),
              ],
            ),
          ),

          // Icons & Text Section
          Container(
          //  padding: EdgeInsets.symmetric(vertical: 10),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                rowIconText('20', Icons.favorite_rounded),
                rowIconText('34', Icons.upload),
                rowIconText('82', Icons.message),
                rowIconText('295', Icons.face),
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.all(10),
            child: 
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            style: TextStyle(fontSize: 9,),),
          )
        ],
      ),
    );
  }
}





// this widget eliminates the need to iteratively write rows again and again
Widget rowIconText(String text, IconData icon)
{
  return Row(
    children: [
      Text(text,
        style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),),
      SizedBox(width: 5,),
      Icon(icon),
    ],
  );
}