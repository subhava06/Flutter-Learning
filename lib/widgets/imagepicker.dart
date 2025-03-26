import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  XFile? file;
  ImagePicker _picker = ImagePicker();
  List<XFile>? files;
  // to pick up a list of images

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image picker'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 300,
              width : double.infinity,
              color: Colors.grey.shade200,
              child: Center(child: file==null? Text('Image not picked'):
              Image.file(File(file!.path),
              fit: BoxFit.cover,))
            ),
            ElevatedButton(onPressed: () async{
              // we have picked an image from gallery and saved it in photo
                final XFile? photo =
                await _picker.pickImage(source: ImageSource.gallery);
                setState(() {
                  file= photo; //linked the photo to the file
                });
                print('Image picked');
                print(photo!.path);
            },
                child: Text('Pick image')
            ),
            ElevatedButton(onPressed: () async{
              // we have picked an image from gallery and saved it in photo
              final List<XFile>? photos = await _picker.pickMultiImage();
              setState(() {
                files= photos; //linked the photo to the file
              });
              print('Images picked');
              for(int i =0; i<files!.length;i++)
                {
                  print(files![i].path);
                }
            },
                child: Text('Pick images')),
          ],
        ),
      ),
    );
  }
}
