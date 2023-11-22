import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OypTextFelid extends StatefulWidget {
  const OypTextFelid({super.key});

  @override
  State<OypTextFelid> createState() => _OypTextFelidState();
}

class _OypTextFelidState extends State<OypTextFelid> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Form(
      child: SizedBox(
        height: height * 0.07,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            6,
            (index) => SizedBox(
              width: width * 0.13,
              child: TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  if (value.length == 1 && index < 5) {
                    FocusScope.of(context).nextFocus();
                  } else if (value.isEmpty && index > 0) {
                    FocusScope.of(context).previousFocus();
                  }
                },
                style: const TextStyle(
                  color: Color(0xFF252525),
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                ),
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
