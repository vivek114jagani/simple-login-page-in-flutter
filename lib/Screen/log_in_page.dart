// ignore_for_file: non_constant_identifier_names

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_page_app/Screen/Widgets/elevated_button_widget.dart';
import 'package:login_page_app/Screen/home_screen.dart';
import 'package:login_page_app/Screen/register_page.dart';
import 'Widgets/forget_password_txt.dart';
import 'Widgets/stack_widget.dart';
import 'Widgets/text_field_widgets.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyStackWidget(
              image: SvgPicture.asset("Assets/Images/get_started.svg"),
              maintxt: "Welcome back",
              txt: "sign in to access your account",
            ),
            SizedBox(height: height * 0.03),
            MyTextFieldWidget(
              sufix: SvgPicture.asset("Assets/Images/mail.svg"),
              hinttxt: "Enter your email",
              obx: false,
            ),
            SizedBox(height: height * 0.04),
            MyTextFieldWidget(
              sufix: SvgPicture.asset("Assets/Images/lock.svg"),
              hinttxt: "Password",
              obx: true,
            ),
            SizedBox(height: height * 0.01),
            const ForgetPasswordDivider(),
            SizedBox(height: height * 0.1),
            MyElevatedButtonWidget(
              icon: Icons.arrow_forward_ios_sharp,
              text: "Next",
              onpares: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                  (route) => false,
                );
              },
            ),
            SizedBox(height: height * 0.04),
            RichText(
              text: TextSpan(
                text: "New Member? ",
                style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xFF252525),
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  TextSpan(
                    text: "Register now",
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFF6C63FF),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPageScreen(),
                          ),
                        );
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
