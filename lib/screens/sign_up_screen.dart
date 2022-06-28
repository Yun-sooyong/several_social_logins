import 'package:flutter/material.dart';
import 'package:several_social_logins/screens/ui_widget/background.dart';
import 'package:several_social_logins/screens/ui_widget/login_button.dart';
import 'package:several_social_logins/screens/ui_widget/logo_text.dart';
import 'package:several_social_logins/screens/ui_widget/textfield.dart';
import 'package:several_social_logins/utils/sign_func.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    final _checkPasswordController = TextEditingController();
    final _nameController = TextEditingController();

    Size size = MediaQuery.of(context).size;

    @override
    void dispose() {
      _emailController.dispose();
      _passwordController.dispose();
      _checkPasswordController.dispose();
      _nameController.dispose();

      super.dispose();
    }

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
              heightFactor: 1.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Logo(logo: 'sign-up'),
                  // * email, password, name
                  // CustomTextField(
                  //   controller: _nameController,
                  //   hintText: 'Name',
                  //   icon: Icon(Icons.man),
                  // ),
                  CustomTextField(
                    controller: _emailController,
                    hintText: 'Email',
                    icon: Icon(Icons.email),
                  ),
                  CustomTextField(
                    controller: _passwordController,
                    hintText: 'Password',
                    isPassword: true,
                    icon: Icon(Icons.password),
                  ),
                  // CustomTextField(
                  //   controller: _checkPasswordController,
                  //   hintText: 'Check Password',
                  //   isPassword: true,
                  //   icon: Icon(Icons.password),
                  // ),
                  // * sign up complete button
                  LoginButton(
                    size: size,
                    text: 'complete',
                    onPressed: () {
                      // TODO: firebase 연동 후 데이터를 보내는 내용을 추가
                      signUpEmail(
                        _emailController.text.trim(),
                        _passwordController.text.trim(),
                        context,
                      );
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
