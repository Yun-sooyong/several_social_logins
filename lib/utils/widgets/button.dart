import 'package:flutter/material.dart';

class SnsButton extends StatelessWidget {
  Color background;
  String name;
  SnsButton({
    Key? key,
    required this.background,
    required this.name,
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
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Image.asset(name),
      ),
    );
  }
}
