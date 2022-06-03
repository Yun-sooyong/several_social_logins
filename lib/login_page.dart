import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:several_social_logins/utils/color.dart';
import 'package:several_social_logins/utils/glassmorphism.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
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
          body: Center(
            child: Column(
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
                  height: size.height * 0.17,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // id field
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 17, vertical: 4),
                          child: TextField(),
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey.shade300,
                        ),
                        // pw field
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 17, vertical: 4),
                          child: TextField(),
                        ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Google'),
                    Text('Apple'),
                    Text('Kakao'),
                    Text('Naver'),
                    Text('Twitter'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('아직 회원이 아니신가요?'),
                    Text('회원가입'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
