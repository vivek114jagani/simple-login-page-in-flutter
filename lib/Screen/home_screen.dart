import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.2),
            const Text(
              "Welcome To Home",
              style: TextStyle(
                fontSize: 25,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
                color: Color(0xFF252525),
              ),
            ),
            SizedBox(height: height * 0.1),
            SvgPicture.asset(
              "Assets/Images/welcome.svg",
              width: width,
            ),
            SizedBox(height: height * 0.1),
            const Text(
              "Currently The Next Part of Home Activity & Fragementation is under development. The upcoming Part 2 is coming Soon........",
              style: TextStyle(
                color: Color(0xFF252525),
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
