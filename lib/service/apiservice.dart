import 'package:firebase_auth/firebase_auth.dart';

Future<void> registerUser(String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

  } catch (e) {

  }
}

Future<void> loginUser(String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

  } catch (e) {

  }
}