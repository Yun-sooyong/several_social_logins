import 'package:flutter/material.dart';

class SnsButton extends StatelessWidget {
  final Color background;
  final String name;
  final void Function()? onPressed;
  SnsButton({
    Key? key,
    required this.background,
    required this.name,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        primary: background,
        fixedSize: Size(45, 45),
        elevation: 0,
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Image.asset(name),
      ),
    );
  }
}
