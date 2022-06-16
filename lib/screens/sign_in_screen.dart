import 'package:flutter/material.dart';
import 'package:several_social_logins/logins_ui_widget/background.dart';
import 'package:several_social_logins/logins_ui_widget/login_button.dart';
import 'package:several_social_logins/logins_ui_widget/sign_up.dart';
import 'package:several_social_logins/logins_ui_widget/sns_login_buttons.dart';
import 'package:several_social_logins/logins_ui_widget/logo_text.dart';
import 'package:several_social_logins/logins_ui_widget/textfield.dart';

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
    return Background(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // * logo
                Logo(logo: 'logins'),
                // * input login, password textField
                // TODO: 입력 데이터 처리, textfield decoration
                CustomTextField(
                  hintText: 'Email',
                  icon: Icon(Icons.email),
                ),
                CustomTextField(
                  hintText: 'Password',
                  icon: Icon(Icons.password),
                  isPassword: true,
                ),
                // * login button
                LoginButton(
                  size: size,
                  text: 'connect',
                  onPressed: () {},
                ),
                // * sns login buttons
                LoginSns(),
                // * sign up button and string
                SignUpButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
