import 'package:firebase_auth/firebase_auth.dart';
import '../models/myuser.dart';

class AuthService {

final FirebaseAuth _auth = FirebaseAuth.instance;

// create user object
  MyUser? _userfromFirebase(User user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

  // auth change user steam
  Stream<MyUser?> get user{
    return _auth.authStateChanges()
        .map((User? user) => _userfromFirebase(user!)); //this is the same as below
     //     .map(_userfromFirebase);
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


