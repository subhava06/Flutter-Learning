import 'package:flutter/material.dart';
import 'package:thirty_widgets/widgets/alert.dart';
import 'package:thirty_widgets/widgets/animated_text.dart';
import 'package:thirty_widgets/widgets/button.dart';
import 'package:thirty_widgets/widgets/container_sized.dart';
import 'package:thirty_widgets/widgets/day19ui.dart';
import 'package:thirty_widgets/widgets/day20.dart';
import 'package:thirty_widgets/widgets/dismissible.dart';
import 'package:thirty_widgets/widgets/dropdown.dart';
import 'package:thirty_widgets/widgets/imagepicker.dart';
import 'package:thirty_widgets/widgets/list_grid.dart';
import 'package:thirty_widgets/widgets/location.dart';
import 'package:thirty_widgets/widgets/rowscols.dart';
import 'package:thirty_widgets/widgets/snackbar.dart';
import 'package:thirty_widgets/widgets/drawer.dart';
import 'package:thirty_widgets/widgets/image.dart';
import 'package:thirty_widgets/widgets/bottomSheet.dart';
import 'package:thirty_widgets/widgets/bottomnav.dart';
import 'package:thirty_widgets/widgets/form.dart';
import 'package:thirty_widgets/widgets/stack.dart';
import 'package:thirty_widgets/widgets/tabbar.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor:  Colors.orange,
       // colorScheme: ColorScheme.white(primary: Colors.orange),//updated way to apply primary color
      ),
      home: Day20(),
    );
  }
}
