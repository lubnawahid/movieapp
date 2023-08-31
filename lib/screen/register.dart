import 'package:flutter/material.dart';

import '../service/register.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.green,Colors.greenAccent],
              begin: Alignment.center,
              end: Alignment.center),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter Username',
                ),
              ),
              TextField(
                controller: passController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter password',
                ),
              ),
              SizedBox(height: 100,),
              ElevatedButton(onPressed: (){
                registration(emailController.text,passController.text,context);
              }, child: Text('SignUp'))
            ],
          ),
        ),
      ),
    );
  }
}