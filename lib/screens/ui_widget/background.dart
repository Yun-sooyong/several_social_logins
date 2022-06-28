import 'package:flutter/material.dart';
import 'package:several_social_logins/widgets/glassmorphism.dart';
import 'package:several_social_logins/utils/color.dart';
// * 외부 탭 키보드 내림 / 그라데이션 배경색 / 불투명화

class Background extends StatelessWidget {
  final Widget child;
  const Background({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [tGradientStart, tGradientEnd],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Glassmorphism(
          blur: 0.2,
          opacity: 0.2,
          child: child,
        ),
      ),
    );
  }
}
