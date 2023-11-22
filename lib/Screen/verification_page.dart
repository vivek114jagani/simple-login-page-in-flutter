import 'package:flutter/material.dart';
import 'package:login_page_app/Screen/Widgets/otp_textfeild.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.15),
            const Text(
              "Almost there ",
              style: TextStyle(
                color: Color(0xFF252525),
                fontSize: 25,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: height * 0.04),
            const VerificationRichTextWidget(),
            SizedBox(height: height * 0.09),
            const OypTextFelid(),
            SizedBox(height: height * 0.06),
            VerificationButton(width: width, height: height),
            SizedBox(height: height * 0.1),
            const CenterTextWidget(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}

class CenterTextWidget extends StatelessWidget {
  const CenterTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            const Text(
              "Didn’t receive any code? Resend Again",
              style: TextStyle(
                color: Color(0xFF252525),
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "Request new code in 00:30s",
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class VerificationButton extends StatelessWidget {
  const VerificationButton({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
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
      onPressed: () {},
      child: const Text(
        "VERIFY",
        style: TextStyle(
          fontSize: 20,
          fontFamily: "Montserrat",
          color: Color(0xFFFBFBFB),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class VerificationRichTextWidget extends StatelessWidget {
  const VerificationRichTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: "Please enter the 6-digit code sent to your \nemail ",
            style: TextStyle(
              color: Color(0xFF252525),
              fontSize: 15,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w300,
            ),
          ),
          TextSpan(
            text: "*********@gmail.com",
            style: TextStyle(
              color: Color(0xFF252525),
              fontSize: 15,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: ' for verification.',
            style: TextStyle(
              color: Color(0xFF252525),
              fontSize: 15,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
