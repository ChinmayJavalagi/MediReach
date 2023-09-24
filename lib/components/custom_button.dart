import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medireach/utils/pallete.dart';

import '../utils/constants.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;

  CustomButton({required this.buttonText, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: (){},
          minWidth: 150.0,
          height: 40.0,
          child: Text(
            buttonText,
            style: GoogleFonts.manrope(textStyle: kButtonTextStyle),
            ),
          ),
        ),
      );
  }
}
