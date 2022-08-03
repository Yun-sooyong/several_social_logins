import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:several_social_logins/social_signs/kakao_sign.dart';
//import 'package:several_social_logins/utils/sign_func.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sign in '),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('sign out'),
            ),
          ],
        ),
      ),
    );
  }
}
