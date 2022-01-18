import 'package:flutter/material.dart';

class Home extends StatefulWidget {
   @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prayer App'),
        elevation: 2,
        leading: Image.asset('assets/images/chewie.png'),


        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            alignment: Alignment.topLeft ,
          )
        ],

      ),
      body: Text('elvis'),

    );
  }
}
