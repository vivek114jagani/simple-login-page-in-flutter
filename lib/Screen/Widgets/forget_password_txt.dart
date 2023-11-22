import 'package:flutter/material.dart';
import 'package:login_page_app/Screen/verification_page.dart';

class ForgetPasswordDivider extends StatefulWidget {
  const ForgetPasswordDivider({super.key});

  @override
  State<ForgetPasswordDivider> createState() => _ForgetPasswordDividerState();
}

class _ForgetPasswordDividerState extends State<ForgetPasswordDivider> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Expanded(
          child: Checkbox(
            activeColor: const Color(0xFFCBCBCB),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
        ),
        const Text(
          "Remember me",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(width: width * 0.18),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const VerificationPage(),
              ),
            );
          },
          child: const Text(
            "Forget password ?",
            style: TextStyle(
              fontSize: 13,
              color: Color(0xFF6C63FF),
            ),
          ),
        ),
      ],
    );
  }
}
