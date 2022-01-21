import 'package:flutter/material.dart';
import 'package:prayerapp/initialdirectory.dart';
import 'package:prayerapp/loading.dart';
import 'package:prayerapp/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: initialdirectory(),
    );
  }
}

// I should do: user log in stuff, loading,