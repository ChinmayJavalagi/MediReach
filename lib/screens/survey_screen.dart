import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medireach/brain/survey_brain.dart';
import 'package:medireach/components/custom_button.dart';
import 'package:medireach/utils/pallete.dart';

import '../components/custom_radio_button.dart';
import '../utils/constants.dart';
import 'dashboard_screen.dart';

SurveyBrain surveyBrain = SurveyBrain();

class SurveyScreen extends StatefulWidget {
  static String id = 'survey_screen';
  const SurveyScreen({Key? key}) : super(key: key);

  @override
  State<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
bool isVisible = false;
  void checkAnswer(bool userAnswer) {
    setState(() {
      if (surveyBrain.isFinished()) {
        isVisible = true;
      } else {
        surveyBrain.nextQuestion();
      }
    });
  }

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
            SizedBox(height: 20,),
            Padding(
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
            SizedBox(height: 60,),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GestureDetector(
                      onTap: (){
                        checkAnswer(true);
                      },
                      child: Card(
                        elevation: 10,
                        color: Pallete.primaryThemeColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0), // adds rounded corners
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Icon(Icons.check_rounded,color: Colors.white,size: 40,),
                              SizedBox(height: 10,),
                              Text('YES',style: GoogleFonts.manrope(
                                  textStyle: kOptionHeaderStyle
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GestureDetector(
                      onTap: (){
                        checkAnswer(false);
                      },
                      child: Card(
                        elevation: 10,
                        color: Pallete.redColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0), // adds rounded corners
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Icon(Icons.close_rounded,color: Pallete.whiteColor,size: 40,),
                              SizedBox(height: 10,),
                              Text('NO',style: GoogleFonts.manrope(
                                  textStyle: kOptionHeaderStyle
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 240,),
            Visibility(
              visible: isVisible,
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomButton(buttonText: 'Submit', buttonColor: Pallete.primaryThemeColor, onpressed: () {
                    Navigator.pushNamed(context, DashboardScreen.id);
                  },),
                ),
            ),
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

