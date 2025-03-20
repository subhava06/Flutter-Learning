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

  //----------------FUNCTIONS--------------
  trySubmit() {
    final isValid = _formKey.currentState!.validate(); // ! is used for null safety and isValid stores whether the form details are valid or not
    if(isValid) {
      _formKey.currentState!.save(); // first save the form like this then call submitForm() func
      submitForm();
    }
    else {
      print('Error');
    }
  }

  submitForm()
  {
    print(firstName);
    print(lastName);
    print(email);
    print(password);
  }

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
          child: Container(
            margin: EdgeInsets.all(10),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter first name',

                    ) ,
                    key : ValueKey('firstName'),
                   validator: (value)
                    {
                      if(value.toString().isEmpty){
                        return 'First name should not be empty';
                      }
                      else {
                        return null;
                      }
                    },
                    // now decide what happens when details by user is valid and form is getting saved
                    onSaved: (value){
                      firstName = value.toString();
                    },
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter Last name'
                    ) ,
                    key : ValueKey(lastName),
                    validator: (value)
                    {
                      if(value.toString().isEmpty){
                        return 'Last name should not be empty';
                      }
                      else {
                        return null;
                      }
                    },
                    // now decide what happens when details by user is valid and form is getting saved
                    onSaved: (value){
                       lastName= value.toString();
                    },
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter Email'
                    ) ,
                    key : ValueKey('email'),
                    validator: (value)
                    {
                      if(value == null || value.toString().isEmpty){
                        return 'Email should not be empty';
                      }
                      else if(!value.contains("@")) {
                         return 'Email must contain @';
                      }
                      else {
                        return null;
                      }
                    },
                    // now decide what happens when details by user is valid and form is getting saved
                    onSaved: (value){
                      email = value.toString();
                    },
                  ),

                  TextFormField(
                    obscureText: true, // makes password hide
                    decoration: InputDecoration(

                        hintText: 'Enter password'
                    ) ,
                    key : ValueKey('password'),
                    validator: (value)
                    {
                      if(value.toString().length<=5){
                        return 'Minimum length of password must be 6';
                      }
                      else {
                        return null;
                      }
                    },
                    // now decide what happens when details by user is valid and form is getting saved
                    onSaved: (value){
                      password = value.toString();
                    },
                  ),

                  TextButton(
                      style: TextButton.styleFrom(backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                      onPressed: (){
                    trySubmit(); // call this func whenever user clicks the submit button
                  }
                  , child: Text('Submit')),

                ],
              ),
            ),
          )
        )
    );
  }
}
