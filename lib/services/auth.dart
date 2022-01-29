import 'package:firebase_auth/firebase_auth.dart';
import '../models/myuser.dart';

class AuthService {

final FirebaseAuth _auth = FirebaseAuth.instance;

// create user object
  MyUser? _userfromFirebase(User user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

// sign in anon
Future signInAnon() async {
  try {

    UserCredential result = await _auth.signInAnonymously(); //AuthResult
    User? user = result.user;                                // FirebaseUser
    return _userfromFirebase(user!);

  } catch (e) {
    print(e.toString());
    return null;
  }
}
  }
  // Sign in with Email

  // Register


  //Sign out


