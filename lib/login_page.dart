import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:several_social_logins/utils/color.dart';
import 'package:several_social_logins/utils/glassmorphism.dart';
import 'package:several_social_logins/utils/sns_buttons.dart';
import 'package:several_social_logins/utils/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
            backgroundColor: Colors.transparent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // * logo
                Text.rich(
                  TextSpan(
                    text: 'LOGINS',
                    style: GoogleFonts.bebasNeue(
                        fontSize: 90,
                        letterSpacing: 6,
                        color: Colors.grey.shade900),
                    children: [
                      TextSpan(
                        text: '.',
                        style: GoogleFonts.bebasNeue(
                            fontSize: 100,
                            color: Colors.lightGreenAccent.shade400),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // * input login, password
                // TODO: 입력 데이터 처리, textfield decoration
                Container(
                  height: size.height * 0.15,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    //color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Glassmorphism(
                    blur: 0.3,
                    opacity: 0.3,
                    radius: 20,
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFielded(
                          hintText: 'EMAIL',
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey.shade300,
                          height: 3,
                        ),
                        TextFielded(
                          hintText: 'PASSWORD',
                          isPassword: true,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // * login button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreenAccent.shade400.withOpacity(0.7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fixedSize: Size(size.width * 0.8, size.height * 0.05),
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: Text(
                    'connect',
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 17,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  'SNS로 로그인하기',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade800.withOpacity(0.8),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    // TODO: Make snsLoginButton Widget
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
                            color: Colors.grey.shade800.withOpacity(0.8),
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
    );
  }
}
