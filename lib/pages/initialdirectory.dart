import 'package:flutter/material.dart';
import 'package:prayerapp/models/myuser.dart';
import 'package:prayerapp/pages/authenticate/authenticate.dart';
import 'package:prayerapp/pages/inappscreen/home.dart';
import 'package:provider/provider.dart';

class initialdirectory extends StatelessWidget {
  const initialdirectory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<MyUser>(context);
    print(user);

    return Authenticate();
  }
}
