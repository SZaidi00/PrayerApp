import 'package:flutter/material.dart';
import 'package:prayerapp/pages/authenticate/userlogin.dart';


class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:SignIn(),
    );
  }
}