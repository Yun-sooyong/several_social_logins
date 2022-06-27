import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Size size;
  final String text;
  final VoidCallback? onPressed;
  const LoginButton(
      {Key? key, required this.size, this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.lightGreenAccent.shade400.withOpacity(0.7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          fixedSize: Size(size.width, size.height * 0.055),
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.grey.shade800,
            fontSize: 18,
            letterSpacing: 1.5,
          ),
        ),
      ),
    );
  }
}
