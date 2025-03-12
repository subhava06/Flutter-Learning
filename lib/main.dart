import 'package:flutter/material.dart';
import 'package:thirty_widgets/widgets/container_sized.dart';
import 'package:thirty_widgets/widgets/rowscols.dart';
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
      home:  RowsCols(),
    );
  }
}
