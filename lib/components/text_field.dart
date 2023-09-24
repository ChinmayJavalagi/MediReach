import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medireach/utils/constants.dart';

import '../utils/pallete.dart';

class TextFieldForm extends StatelessWidget {
  TextFieldForm({required this.fieldname,required this.hint});

  final String fieldname;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0, right: 14.0, bottom: 12.0, top: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(fieldname,style: GoogleFonts.manrope(
            textStyle: kTextFieldHeaderTextStyle,
          ),),
          SizedBox(height: 8.0,),
          TextField(
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: GoogleFonts.manrope(textStyle: kTextFieldHintTextStyle),
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Pallete.grayColor)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Pallete.grayColor)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Pallete.primaryThemeColor, width: 1.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
