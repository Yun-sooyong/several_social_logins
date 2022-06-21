import 'package:flutter/material.dart';
import 'package:several_social_logins/screens/sign_up_screen.dart';
import 'package:several_social_logins/utils/page_route_animation.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '아직 회원이 아니신가요?  ',
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey.shade800.withOpacity(0.8),
            ),
          ),
          InkWell(
            onTap: () {
              PageRouteWithAnimation pageRouteWithAnimation =
                  PageRouteWithAnimation(SignUpPage());
              Navigator.push(
                  context, pageRouteWithAnimation.slideLeftToRight());
            },
            child: Text(
              '회원가입',
              style: TextStyle(
                fontSize: 13,
                color: Colors.lightGreenAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
