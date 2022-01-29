import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:prayerapp/services/auth.dart';
import 'package:provider/provider.dart';

import 'package:prayerapp/pages/authenticate/authenticate.dart';

import 'package:prayerapp/pages/initialdirectory.dart';
import 'package:prayerapp/models/myuser.dart';
import 'package:prayerapp/pages/inappscreen/loading.dart';
import 'package:prayerapp/pages/inappscreen/home.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

// I should do: user log in stuff, loading,

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser?>.value(
      initialData: null,
      value: AuthService().user,
        child:MaterialApp(
          home: initialdirectory(),
        ),
    );
  }
}