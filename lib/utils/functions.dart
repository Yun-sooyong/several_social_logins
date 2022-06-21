import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:several_social_logins/screens/home.dart';

void sToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
  );
}

Future signIn(email, password) async {
  await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email.text.trim(),
    password: password.text.trim(),
  );
}

void signInEmail(email, password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      sToast('사용자를 찾을 수 없습니다.');
    } else if (e.code == 'wrong-password') {
      sToast('잘못된 비밀번호입니다.');
    }
  } catch (e) {
    print(e);
  }
}

void signUpEmail(email, password, context) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    Navigator.pop(context);
  } on FirebaseAuthException catch (e) {
    if (e.code == 'email-already-in-use') {
      sToast('이미 존재하는 이메일입니다.');
    } else if (e.code == 'weak-password') {
      sToast('비밀번호의 강도가 약합니다.');
    }
  } catch (e) {
    print(e);
  }
}

void signOut() {
  FirebaseAuth.instance.signOut();
}
