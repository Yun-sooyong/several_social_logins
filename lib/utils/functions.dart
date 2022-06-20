import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void sToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
  );
}

Future singIn(email, password) async {
  await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email.text.trim(),
    password: password.text.trim(),
  );
}
