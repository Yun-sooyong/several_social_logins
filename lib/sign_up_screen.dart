import 'package:flutter/material.dart';
import 'package:several_social_logins/logins_ui_widget/background.dart';
import 'package:several_social_logins/logins_ui_widget/login_button.dart';
import 'package:several_social_logins/logins_ui_widget/logo_text.dart';
import 'package:several_social_logins/logins_ui_widget/textfield.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          child: SingleChildScrollView(
            child: Align(
              alignment: Alignment.center,
              heightFactor: 1.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Logo(logo: 'sign-up'),
                  // * email, password, name
                  CustomTextField(
                    hintText: 'Name',
                    icon: Icon(Icons.man),
                  ),
                  CustomTextField(
                    hintText: 'Email',
                    icon: Icon(Icons.email),
                  ),
                  CustomTextField(
                    hintText: 'Password',
                    isPassword: true,
                    icon: Icon(Icons.password),
                  ),
                  // * sign up complete button
                  LoginButton(
                    size: size,
                    text: 'complete',
                    onPressed: () {
                      // TODO: firebase 연동 후 데이터를 보내는 내용을 추가
                      Navigator.pop(context);
                      // TODO: toast 추가
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
