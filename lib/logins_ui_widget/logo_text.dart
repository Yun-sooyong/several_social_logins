import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  final String logo;
  double? size;
  Logo({super.key, required this.logo, this.size = 90});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: logo,
        style: GoogleFonts.bebasNeue(
            fontSize: size, letterSpacing: 6, color: Colors.grey.shade900),
        children: [
          TextSpan(
            text: '.',
            style: GoogleFonts.bebasNeue(
                fontSize: 100, color: Colors.lightGreenAccent.shade400),
          ),
        ],
      ),
    );
  }
}
