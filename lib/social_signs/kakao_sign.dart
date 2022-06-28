import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:several_social_logins/social_signs/social_sign.dart';

class KakaoSign implements SocialSign {
  @override
  Future<bool> login() async {
    try {
      // 카카오톡이 설치되어 있으면 카카오톡으로 로그인
      if (await isKakaoTalkInstalled()) {
        try {
          print('kakao install check; login kakao talk');
          await UserApi.instance.loginWithKakaoTalk();
          return true;
        } catch (error) {
          return false;
        }
        // 카카오톡이 설치되어 있지 않으면 카카오 계정으로 로그인
      } else {
        print('kakao installed false; login kakao account');
        await UserApi.instance.loginWithKakaoAccount();
        return true;
      }
    } catch (error) {
      return false;
    }
  }

  @override
  Future<bool> logout() async {
    try {
      await UserApi.instance.logout();
      return true;
    } catch (error) {
      return false;
    }
  }
}
