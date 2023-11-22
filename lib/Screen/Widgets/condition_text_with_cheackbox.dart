import 'package:flutter/material.dart';

class CheckBoxWithRichTextWidget extends StatefulWidget {
  const CheckBoxWithRichTextWidget({super.key});

  @override
  State<CheckBoxWithRichTextWidget> createState() =>
      _CheckBoxWithRichTextWidgetState();
}

class _CheckBoxWithRichTextWidgetState
    extends State<CheckBoxWithRichTextWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
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
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'By checking the box you agree to our ',
                style: TextStyle(
                  color: Color(0xFF252525),
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Terms ',
                style: TextStyle(
                  color: Color(0xFF6C63FF),
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'and ',
                style: TextStyle(
                  color: Color(0xFF252525),
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Condition ',
                style: TextStyle(
                  color: Color(0xFF6C63FF),
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
