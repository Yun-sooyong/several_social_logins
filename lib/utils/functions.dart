import 'package:firebase_auth/firebase_auth.dart';

Future singIn(email, password) async {
  await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email.text.trim(),
    password: password.text.trim(),
  );
}
