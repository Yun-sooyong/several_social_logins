import 'package:flutter/material.dart';
import 'package:several_social_logins/screens/ui_widget/background.dart';
import 'package:several_social_logins/screens/ui_widget/logo_text.dart';
import 'package:several_social_logins/utils/color.dart';
import 'package:several_social_logins/utils/sign_func.dart';

// import 'package:several_social_logins/screens/ui_widget/sns_login_buttons.dart';
// import 'package:several_social_logins/screens/ui_widget/sign_up.dart';
// import 'package:several_social_logins/screens/ui_widget/login_button.dart';
// import 'package:several_social_logins/screens/ui_widget/textfield.dart';
// import 'package:several_social_logins/utils/sign_func.dart';

class LoginPage extends StatefulWidget {
  final bool isToast;
  LoginPage({
    Key? key,
    this.isToast = false,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Background(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // logo
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Logo(logo: 'logins'),
              ),
            ),
            Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 14,
                    crossAxisSpacing: 14,
                    childAspectRatio: 1 / 1,
                  ),
                  itemCount: itemColor.length,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                      color: itemColor[index],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white, width: 0.5),
                    ),
                    child: InkWell(onTap: () {
                      sToast('$index');
                    }),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
