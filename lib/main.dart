import 'package:flutter/material.dart';
import 'package:thirty_widgets/widgets/button.dart';
import 'package:thirty_widgets/widgets/container_sized.dart';
import 'package:thirty_widgets/widgets/dismissible.dart';
import 'package:thirty_widgets/widgets/list_grid.dart';
import 'package:thirty_widgets/widgets/rowscols.dart';
import 'package:thirty_widgets/widgets/snackbar.dart';
import 'package:thirty_widgets/widgets/drawer.dart';
import 'package:thirty_widgets/widgets/image.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color.fromARGB(255, 90, 55, 149),
      ),
      home:  ImageWidget(),
    );
  }
}
