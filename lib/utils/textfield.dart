import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFielded extends StatelessWidget {
  final String hintText;
  bool? isPassword;
  TextFielded({
    super.key,
    required this.hintText,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 0),
      child: TextField(
        obscureText: isPassword!,
        keyboardType: isPassword!
            ? TextInputType.emailAddress
            : TextInputType.visiblePassword,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
