import 'package:firebase_auth/firebase_auth.dart';
import 'package:several_social_logins/utils/sign_func.dart';

class EmailSign {
  Future<bool> login(email, password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim(),
      );
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        sToast('사용자를 찾을 수 없습니다.');
      } else if (e.code == 'wrong-password') {
        sToast('비밀번호 또는 이메일을 다시 확인해주세요.');
      }
      return false;
    }
  }

  Future<bool> logout() async {
    try {
      FirebaseAuth.instance.signOut();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
