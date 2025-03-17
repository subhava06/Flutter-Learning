import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doraemon Image', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),

      body: Center(
        child: Container(
          height: 200,
          width: 300,
          child: CachedNetworkImage(imageUrl: 'https://wallpaperaccess.com/full/3161760.jpg',
          placeholder: (context,url)=>CircularProgressIndicator(),
          errorWidget: (context,url,error)=>Icon(Icons.error),
        ),
        //  color: Colors.red, comment it out as color already mentioned in Boxdecoration
         /* decoration: BoxDecoration(
            boxShadow: [BoxShadow(
              blurRadius:  10,
              color: Colors.grey.shade500,
              spreadRadius: 5.0,
            )],
            image: DecorationImage(image: AssetImage('assets/dora2.jpg'),


            *//*NetworkImage(
                'https://vignette.wikia.nocookie.net/doraemon/images/0/0c/15123387_12783788422'
                    '03958_7328538021889183486_o.jpg/revision/latest?cb=20170415224410&path-prefix=en'
            ),*//*
              fit: BoxFit.fill,
            ),
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),*/
          // above is a much better way to implement an image
          /*child: Image.network(
            'https://vignette.wikia.nocookie.net/doraemon/images/0/0c/15123387_1278378842203958_7328538021889183486_o.jpg/revision/latest?cb=20170415224410&path-prefix=en',
            fit: BoxFit.cover,*/
          ),
        ),
      );

  }
}
