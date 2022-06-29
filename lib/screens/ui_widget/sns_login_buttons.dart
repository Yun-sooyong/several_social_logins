import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:several_social_logins/widgets/button.dart';
import 'package:several_social_logins/social_signs/kakao_sign.dart';
import 'package:several_social_logins/utils/color.dart';

class LoginSns extends StatefulWidget {
  LoginSns({super.key});

  @override
  State<LoginSns> createState() => _LoginSnsState();
}

class _LoginSnsState extends State<LoginSns> {
  //final kakaoSign = KakaoSign();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Row(
            children: [
              Expanded(
                child: Divider(
                  thickness: 1,
                  endIndent: 15,
                ),
              ),
              Text(
                'SNS로 로그인하기',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey.shade800.withOpacity(0.8),
                ),
              ),
              Expanded(
                child: Divider(
                  thickness: 1,
                  indent: 15,
                ),
              ),
            ],
          ),
        ),
        // TODO: SNS Buttons
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SnsButton(
                background: googleColor,
                name: 'assets/images/google_logo.png',
                onPressed: () {},
              ),
              SnsButton(
                background: appleColor,
                name: 'assets/images/apple_logo.png',
                onPressed: () {},
              ),
              SnsButton(
                background: kakaoColor,
                name: 'assets/images/kakao_logo.png',
                onPressed: () async {
                  final kakaoSign = await KakaoSign().login();
                  if (kakaoSign) {}
                },
              ),
              SnsButton(
                background: naverColor,
                // TODO naver logo image change, this is so small
                name: 'assets/images/naver_logo_200.png',
                onPressed: () {},
              ),
              SnsButton(
                background: twitterColor,
                name: 'assets/images/twitter_logo.png',
                onPressed: () {
                  print('fuck you kakao');
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
