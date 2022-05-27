import 'package:flutter/material.dart';
import 'package:prayerapp/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[200],
        elevation: 0.0,
        title: Text('Sign in my friend :)'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),


      ),
    );
  }
}