import 'package:flutter/material.dart';

class MyStackWidget extends StatelessWidget {
  final Widget image;
  final String maintxt;
  final String txt;
  const MyStackWidget({
    super.key,
    required this.image,
    required this.maintxt,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        image,
        Positioned(
          bottom: 60,
          child: Column(
            children: [
              Text(
                maintxt,
                style: const TextStyle(
                  fontSize: 25,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF252525),
                ),
              ),
              Text(
                txt,
                style: const TextStyle(
                  fontSize: 15,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF252525),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
