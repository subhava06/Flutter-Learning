import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();
  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Form",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontStyle: FontStyle.italic ),),
          centerTitle: true,
          backgroundColor: Colors.grey,

        ),
        body: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  key : ValueKey('firstName'),
                  //validator: ,
                ),

              ],
            ),
          )
        )
    );
  }
}
