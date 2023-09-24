import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medireach/components/custom_button.dart';
import 'package:medireach/utils/pallete.dart';

import '../components/custom_radio_button.dart';
import '../utils/constants.dart';
import '../utils/survey_questions.dart';

class SurveyScreen extends StatefulWidget {
  static String id = 'survey_screen';
  const SurveyScreen({Key? key}) : super(key: key);

  @override
  State<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( 
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 10,right: 10,bottom: 15),
              child: Text(
                "Let us know you",
                style: GoogleFonts.manrope(
                  textStyle: kHeaderTextStyle,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: kQuestions.length,
                itemBuilder: (BuildContext context, int index) {
                return CustomRadioListTile(question: "${index+1}. "+kQuestions[index]);
              },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 10,right: 10,bottom: 15),
              child: CustomButton(buttonText: "Submit", buttonColor: Pallete.primaryThemeColor, onpressed: (){}),
            ),
          ],
        ),
      ),
    );
  }
}

