import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

final FirebaseAuth _auth = FirebaseAuth.instance;

// sign in anon
Future signInAnon() async {
  try {

   UserCredential result = await _auth.signInAnonymously(); //AuthResult
   User? user = result.user;                                // FirebaseUser
    return user;
  } catch (e) {
    print(e.toString());
    return null;
  }
}
  }
  // Sign in with Email

  // Register


  //Sign out


