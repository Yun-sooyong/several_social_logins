import 'package:flutter/material.dart';
import 'package:several_social_logins/screens/ui_widget/background.dart';
import 'package:several_social_logins/screens/ui_widget/login_button.dart';
import 'package:several_social_logins/screens/ui_widget/logo_text.dart';
import 'package:several_social_logins/screens/ui_widget/sign_up.dart';
import 'package:several_social_logins/screens/ui_widget/sns_login_buttons.dart';
import 'package:several_social_logins/screens/ui_widget/textfield.dart';

import 'package:several_social_logins/utils/sign_func.dart';

class LoginPage extends StatefulWidget {
  final bool isToast;
  LoginPage({
    Key? key,
    this.isToast = false,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                  controller: _emailController,
                  hintText: 'Email',
                  icon: Icon(Icons.email),
                ),
                CustomTextField(
                  controller: _passwordController,
                  hintText: 'Password',
                  icon: Icon(Icons.password),
                  isPassword: true,
                ),
                // * login button
                LoginButton(
                  size: size,
                  text: 'connect',
                  onPressed: () {
                    signInEmail(
                      _emailController.text.trim(),
                      _passwordController.text.trim(),
                    );
                  },
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
