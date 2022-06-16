import 'package:flutter/material.dart';
import 'package:several_social_logins/screens/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade300),
          brightness: Brightness.light),
      home: const LoginPage(),
      //const SignUpPage(),
    );
  }
}
