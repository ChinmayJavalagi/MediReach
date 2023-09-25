import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medireach/brain/survey_brain.dart';
import 'package:medireach/components/custom_button.dart';
import 'package:medireach/utils/pallete.dart';
import '../components/custom_option_card.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
              padding: const EdgeInsets.only(top: 30,left: 10,right: 10,bottom: 15),
              child: Center(
                child: Text(
                  "Let us know you",
                  style: GoogleFonts.manrope(
                    textStyle: kHeaderTextStyle,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    type: MaterialType.transparency,
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 1, color: Pallete.blackColor),
                        color: Pallete.whiteColor,
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(50.0),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Icon(
                            Icons.volume_up_rounded,
                            size: 20.0,
                            color: Pallete.blackColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text(
                      surveyBrain.getQuestionText(),
                      // "This is where the question text will go.",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.manrope(
                        textStyle: kQuestionTextStyle
                      ),
                    ),
                  ),

                ],
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
                      child: OptionCard(text: 'YES',icon: Icons.check_rounded,color: Pallete.primaryThemeColor,),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: (){
                        checkAnswer(false);
                      },
                      child: OptionCard(text: 'NO',icon:Icons.close_rounded,color: Pallete.redColor,),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 200,),
            Center(
              child: Visibility(
                visible: isVisible,
                child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CustomButton(buttonText: 'Submit', buttonColor: Pallete.primaryThemeColor, onpressed: () {
                      Navigator.pushNamed(context, DashboardScreen.id);
                    },),
                  ),
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

