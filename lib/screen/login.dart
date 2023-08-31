import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/screen/register.dart';

import '../service/login.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                login(emailController.text,passController.text,context);
              }, child: Text('Login')),

              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration()));
              }, child: Text('Dont have an Account'))
            ],
          ),
        ),
      ),
    );
  }
}