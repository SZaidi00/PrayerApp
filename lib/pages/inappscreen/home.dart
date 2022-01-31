import 'package:flutter/material.dart';

import '../../services/auth.dart';

class Home extends StatefulWidget {
   @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  final AuthService _auth = AuthService();



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text('prayer app'),
        elevation: 2,
        backgroundColor: Colors.deepOrange[300],
        leading: Image.asset('assets/images/chewie.png'), // REVISIT HOW TO MAKE CIRCULAR
        leadingWidth: 50,
        titleTextStyle: TextStyle(
          fontFamily: 'WallPoet',
          fontSize: 25,
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await _auth.signOut();
            },
            icon: const Icon(Icons.settings_outlined),
            alignment: Alignment.center ,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.teal,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.6),
        selectedFontSize: 11,
        unselectedFontSize: 11,

        selectedLabelStyle: TextStyle(
          fontFamily: 'WallPoet',
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: 'WallPoet'
        ),
        onTap: (value) {
          // UPDATE TO CHANGE DIRECTION of pressing
        },

        items:[
          BottomNavigationBarItem(
            label: 'Messaging',
            icon: Icon(Icons.messenger_outline_outlined),

          ),
          BottomNavigationBarItem(
            label: 'Salah Times',
            icon: Icon(Icons.access_time_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Achievements',
            icon: Icon(Icons.check_sharp),
          ),
          BottomNavigationBarItem(
            label: 'More Info',
            icon: Icon(Icons.settings_applications),
          ),
        ],
      ),
      body: Text('elvis'),

    );
  }
}
