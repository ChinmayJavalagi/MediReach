import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medireach/utils/pallete.dart';

import '../components/custom_button.dart';
import '../utils/constants.dart';

class SignUpAuthScreen extends StatelessWidget {
  const SignUpAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Sign Up',
                style: GoogleFonts.manrope(textStyle: kHeaderTextStyle),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Image.asset('assets/images/pngwing 1.png'),
            Text(
              'Add Your Fingerprint',
              style: GoogleFonts.manrope(textStyle: kQuestionHeaderTextStyle),
            ),
            SizedBox(height: 280,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(buttonColor: Pallete.grayColor2,buttonText: 'Skip',),
                CustomButton(buttonText: 'Register', buttonColor: Pallete.primaryThemeColor)
              ],
            )
          ],
        ),
      ),
    );
  }
}
