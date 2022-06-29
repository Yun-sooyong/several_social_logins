import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void sToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
  );
}
// TODO kakao_sign.dart 처럼 수정 
// TODO 로그인 관련 함수로 로그인 성공후 home.dart 로 이동 시키도록 함

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
    await FirebaseAuth.instance
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
