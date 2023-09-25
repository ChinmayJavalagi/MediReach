import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medireach/brain/survey_brain.dart';
import 'package:medireach/components/custom_button.dart';
import 'package:medireach/utils/pallete.dart';

import '../components/custom_radio_button.dart';
import '../utils/constants.dart';
import '../utils/survey_questions.dart';
import 'dashboard_screen.dart';

SurveyBrain surveyBrain = SurveyBrain();

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
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    surveyBrain.getQuestionText(),
                    // "This is where the question text will go.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Pallete.blackColor,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      color: Pallete.grayColor,
                      child: Column(
                        children: [
                          Icon(Icons.check,color: Pallete.primaryThemeColor,size: 80,),
                          Text('YES',style:
                            GoogleFonts.manrope(
                              textStyle:kOptionHeaderStyle
                            ),)
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      color: Pallete.grayColor,
                      child: Column(
                        children: [
                          Icon(Icons.close,color: Pallete.redColor,size: 80,),
                          Text('NO',style:
                          GoogleFonts.manrope(
                              textStyle:kOptionHeaderStyle
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )

          ],
        ),
      )
    );
  }
}

//return Scaffold(
//     //   body: SafeArea(
//     //     child: Column(
//     //       children: [
//     //         Padding(
//     //           padding: const EdgeInsets.only(top: 30,left: 10,right: 10,bottom: 15),
//     //           child: Text(
//     //             "Let us know you",
//     //             style: GoogleFonts.manrope(
//     //               textStyle: kHeaderTextStyle,
//     //             ),
//     //           ),
//     //         ),
//     //         Expanded(
//     //           child: ListView.builder(
//     //             itemCount: kQuestions.length,
//     //             itemBuilder: (BuildContext context, int index) {
//     //             return CustomRadioListTile(question: "${index+1}. "+kQuestions[index]);
//     //           },
//     //           ),
//     //         ),
//     //         Padding(
//     //           padding: const EdgeInsets.only(top: 30,left: 10,right: 10,bottom: 15),
//     //           child: CustomButton(buttonText: "Submit", buttonColor: Pallete.primaryThemeColor, onpressed: ()=> Navigator.pushNamed(context, DashboardScreen.id)),
//     //         ),
//     //       ],
//     //     ),
//     //   ),
//     // );

