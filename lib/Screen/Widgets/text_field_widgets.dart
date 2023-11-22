import 'package:flutter/material.dart';

class MyTextFieldWidget extends StatelessWidget {
  final String hinttxt;
  final Widget sufix;
  final bool obx;
  const MyTextFieldWidget({
    super.key,
    required this.hinttxt,
    required this.sufix,
    required this.obx,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obx,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(15),
          child: sufix,
        ),
        hintText: hinttxt,
        hintStyle: TextStyle(
          fontSize: 15,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w300,
          color: Colors.black.withOpacity(0.5),
        ),
        contentPadding: const EdgeInsets.all(15),
        filled: true,
        fillColor: const Color(0x33C4C4C4),
      ),
      maxLines: 1,
      style: const TextStyle(fontSize: 15),
    );
  }
}
