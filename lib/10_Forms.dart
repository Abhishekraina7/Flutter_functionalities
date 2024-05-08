import 'package:flutter/material.dart';


//todo Documentation link: https://docs.flutter.dev/cookbook/forms/validation


class forms_class extends StatefulWidget {
  static String id = "form_class";
  const forms_class({super.key});

  @override
  State<forms_class> createState() => _forms_classState();
}

class _forms_classState extends State<forms_class> {
  final form_key = GlobalKey<FormState>();
  String name = '';
  String email = '';
  String password ='';

  //=================FUNCTIONS========================//
  trysubmit(){ //
    final isvalid = form_key.currentState!.validate();
    if(isvalid){
      form_key.currentState!.save();
      submitform();
    }
    else{
    return print('Error');
    }
  }


  submitform(){
    print(name);
    print(email);
    print(password);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        leading: null,
        title: const Center(child: Text("Forms"),),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Form(
              key: form_key,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter you name',
                    ),
                    validator: (value)
                    {
                      if(value == null || value.isEmpty)
                        {
                          return 'Name should not be empty';
                        }
                      return null;
                    },
                    onSaved: (value) {
                      name = value.toString();
                    }
                  ),
                  TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter you email id',
                      ),
                      validator: (value)
                      {
                        if(value == null || value.isEmpty)
                        {
                          return 'Enter a email';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        email = value.toString();
                      }
                  ),
                  TextFormField(
                       obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Enter Password',

                      ),
                      validator: (value) // value here is the input from user
                      {
                        if(value == null || value.isEmpty || value.length <= 6) // If user doesn't enters anything then alert is shown at the bottom of the Formfield
                        {
                          return 'Enter atleast 6 characters';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        password = value.toString(); // When user submits the form the password gets stored in password variable
                      }
                  ),
                  TextButton(
                    onPressed: (){
                      trysubmit();
                    },
                    child: const Text('Submit',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )
                ],
              ),
          ),
        ),
      ),
    );
  }
}
