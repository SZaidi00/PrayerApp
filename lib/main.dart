import 'package:flutter/material.dart';
import 'package:prayerapp/pages/home.dart';

void main() {runApp(MaterialApp(
    initialRoute: '/home',
    routes:{
      '/home': (context) => Home(),
    }
));
}


