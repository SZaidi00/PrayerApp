import 'package:flutter/material.dart';
import 'package:prayerapp/loading.dart';
import 'package:prayerapp/pages/home.dart';

void main() {runApp(MaterialApp(
    initialRoute: '/home',
    routes:{
     '/loading': (context) => loading(),
      //user log in
      '/home': (context) => Home(),

    }
));
}


