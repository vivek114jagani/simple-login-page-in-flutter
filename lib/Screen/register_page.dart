import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page_app/Screen/home_screen.dart';
import 'Widgets/condition_text_with_cheackbox.dart';
import 'Widgets/elevated_button_widget.dart';
import 'Widgets/stack_widget.dart';
import 'Widgets/text_field_widgets.dart';

class RegisterPageScreen extends StatelessWidget {
  const RegisterPageScreen({super.key});

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
              maintxt: "Get Started",
              txt: "by creating a free account.",
            ),
            SizedBox(height: height * 0.001),
            MyTextFieldWidget(
              sufix: SvgPicture.asset("Assets/Images/user.svg"),
              hinttxt: "Full name",
              obx: false,
            ),
            SizedBox(height: height * 0.02),
            MyTextFieldWidget(
              sufix: SvgPicture.asset("Assets/Images/mail.svg"),
              hinttxt: "Enter your email",
              obx: false,
            ),
            SizedBox(height: height * 0.02),
            MyTextFieldWidget(
              sufix: SvgPicture.asset("Assets/Images/smartphone.svg"),
              hinttxt: "Enter your email",
              obx: false,
            ),
            SizedBox(height: height * 0.02),
            MyTextFieldWidget(
              sufix: SvgPicture.asset("Assets/Images/lock.svg"),
              hinttxt: "Password",
              obx: true,
            ),
            SizedBox(height: height * 0.01),
            const CheckBoxWithRichTextWidget(),
            SizedBox(height: height * 0.01),
            MyElevatedButtonWidget(
              icon: Icons.arrow_forward_ios_sharp,
              text: "Next",
              onpares: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                    (route) => false);
              },
            ),
            SizedBox(height: height * 0.04),
            RichText(
              text: TextSpan(
                text: "Already a member? ",
                style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xFF252525),
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  TextSpan(
                    text: "Log In",
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFF6C63FF),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pop(context);
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
