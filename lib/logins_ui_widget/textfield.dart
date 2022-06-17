import 'package:flutter/material.dart';
import 'package:several_social_logins/utils/color.dart';
import 'package:several_social_logins/widgets/glassmorphism.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final String hintText;
  final Icon icon;
  bool? isPassword;
  final TextEditingController controller;
  CustomTextField({
    super.key,
    required this.hintText,
    this.isPassword = false,
    required this.icon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Glassmorphism(
        blur: 0.3,
        opacity: 0.3,
        radius: 10,
        child: TextField(
          controller: controller,
          obscureText: isPassword!,
          keyboardType: isPassword!
              ? TextInputType.emailAddress
              : TextInputType.visiblePassword,
          decoration: InputDecoration(
            prefixIcon: icon,
            contentPadding: EdgeInsets.all(15),
            hintText: hintText,
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: tGradientEnd,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
