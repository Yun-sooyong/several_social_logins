import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'LOGINS',
        style: GoogleFonts.bebasNeue(
            fontSize: 90, letterSpacing: 6, color: Colors.grey.shade900),
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
