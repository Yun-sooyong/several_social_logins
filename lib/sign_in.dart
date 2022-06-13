import 'package:flutter/material.dart';
import 'package:several_social_logins/utils/color.dart';
import 'package:several_social_logins/logins_ui_widget/logo_text.dart';
import 'package:several_social_logins/utils/widgets/button.dart';
import 'package:several_social_logins/utils/widgets/glassmorphism.dart';
import 'package:several_social_logins/utils/widgets/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [tGradientStart, tGradientEnd],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Glassmorphism(
          blur: 0.2,
          opacity: 0.2,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // * logo
                    Logo(),
                    // * input login, password
                    // TODO: 입력 데이터 처리, textfield decoration
                    Container(
                      height: size.height * 0.15,
                      //width: size.width * 0.8,
                      child: Glassmorphism(
                        blur: 0.3,
                        opacity: 0.3,
                        radius: 10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFielded(
                              hintText: 'Email',
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.grey.shade300,
                              height: 10,
                            ),
                            TextFielded(
                              hintText: 'Password',
                              isPassword: true,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // * login button
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary:
                              Colors.lightGreenAccent.shade400.withOpacity(0.7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fixedSize: Size(size.width, size.height * 0.055),
                          elevation: 0,
                        ),
                        onPressed: () {},
                        child: Text(
                          'connect',
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 18,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 20,
                    // ),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SnsButton(
                              background: googleColor,
                              name: 'assets/images/google_logo.png'),
                          SnsButton(
                              background: appleColor,
                              name: 'assets/images/apple_logo.png'),
                          SnsButton(
                              background: kakaoColor,
                              name: 'assets/images/kakao_logo.png'),
                          SnsButton(
                              background: naverColor,
                              // TODO naver image change
                              name: 'assets/images/naver_logo_200.png'),
                          SnsButton(
                              background: twitterColor,
                              name: 'assets/images/twitter_logo.png'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '아직 회원이 아니신가요?  ',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey.shade800.withOpacity(0.8),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              '회원가입',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.lightGreenAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
