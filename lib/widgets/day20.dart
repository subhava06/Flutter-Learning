import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Day20 extends StatelessWidget {
  const Day20({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      //  backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
        title: Text('subhava.06',style:
          GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.bold,),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 210,
              child: Row(children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: 180,
                 // color: Colors.purple,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/profile.jpg'),
                        radius: 60,
                      ),
                      SizedBox(height: 5,),
                      Text('Subhava Ojha',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      Text('Student | Android Developer',
                        style: GoogleFonts.poppins(
                          //fontWeight: FontWeight.w700,
                          fontSize: 10,
                        ),),
                    ],
                  ),
                ),
                Expanded(child: Container(

              //  color: Colors.orange,
                  child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                    //contains two containers
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:
                        [
                           profileDetails('150', 'Posts'),
                              SizedBox(width: 7,),
                              profileDetails('199', 'Following'),
                            SizedBox(width: 7,),
                              profileDetails('100', 'Followers'),
                            ],
                          ),
                          SizedBox(height: 10,),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              child:
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(Colors.blue),
                                ),
                                onPressed: (){},
                                  child: Text('Follow',style: TextStyle(color: Colors.white,),),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue,width: 2,),
                              color: Colors.black,
                              shape: BoxShape.circle,

                            ),
                            child: Icon(Icons.arrow_downward,color: Colors.blue,),
                          ),
                        ],
                      ),
                    ),
                      SizedBox(width: 10,),
                  ],
                  ),
                ),
                ),
              ],
              ),
            ),

            Container(
              height: 120,
            //  color: Colors.blue,
              child: ListView.builder(itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 80, width: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('dora1.jpg'),
                        fit: BoxFit.cover,),
                        shape: BoxShape.circle,
                        color: Colors.orange,
                      ),
                    ),
                    Text('Title'),
                  ],
                );
              },),
            ),

            /*Container(
              height: 100,
              color: Colors.green,
            ),*/

            //now complete rest of the space will be given to the container
            Expanded(child: Container(
              //  color: Colors.yellow,
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemBuilder: (context,index){
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('dora2.jpg'),fit: BoxFit.fill,),
                        color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.all(5),
                      height: 150, width: 150,
                    //  color: Colors.red,
                    );
                  },),
            )
            ),
          ],
        ),
      ),
    );
}
  }

  Widget profileDetails(String text1, String text2)
  {
    return Column(

      children: [
        Text(text1 ,
          style: TextStyle(fontSize: 24,),
        ),
        Text(text2 ,
          style: TextStyle(fontSize: 14,),
        ),

      ],
    );
  }

