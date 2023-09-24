import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medireach/utils/pallete.dart';
import '../utils/constants.dart';

class CustomRadioListTile extends StatefulWidget {
  CustomRadioListTile({required this.question});
  final String question;
  @override
  State<CustomRadioListTile> createState() => _CustomRadioListTileState();
}

class _CustomRadioListTileState extends State<CustomRadioListTile> {
  int selectedRadio = 0;

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.question, style: GoogleFonts.manrope(textStyle: kQuestionTextStyle),),
          Row(
            children: [
              Expanded(
                child: RadioListTile(
                  title: Text("Yes"),
                  activeColor: Pallete.primaryThemeColor,
                  value: 1, groupValue: selectedRadio, onChanged: (int? value) {
                  setSelectedRadio(value!);
                },
                ),
              ),
              Expanded(
                child: RadioListTile(
                  title: Text("No"),
                  activeColor: Pallete.primaryThemeColor,
                  value: 2, groupValue: selectedRadio, onChanged: (int? value) {
                  setSelectedRadio(value!);
                },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
