import 'package:flutter/material.dart';

class MyElevatedButtonWidget extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback onpares;
  const MyElevatedButtonWidget({
    super.key,
    required this.text,
    this.icon,
    required this.onpares,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: const Color(0xFF6C63FF),
        minimumSize: Size(width, height * 0.06),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      onPressed: onpares,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              fontFamily: "Montserrat",
              color: Color(0xFFFBFBFB),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(width: width * 0.01),
          Icon(
            icon,
            color: const Color(0xFFFBFBFB),
            size: 20,
          ),
        ],
      ),
    );
  }
}
