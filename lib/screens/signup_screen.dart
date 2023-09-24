import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medireach/screens/signup_auth_screen.dart';
import 'package:medireach/utils/pallete.dart';
import '../components/custom_button.dart';
import '../components/text_field.dart';
import '../utils/constants.dart';

class SignUpScreen extends StatefulWidget {
  static String id = 'signup_screen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( 
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30,left: 10,right: 10,bottom: 15),
            child: Column(
              children: [
                Text(
                  'Sign Up',
                  style: kHeaderTextStyle,
                ),
                SizedBox(height: 30.0),
                Column(
                  children: [
                    TextFieldForm(fieldname: 'Full Name', hint: 'ex: Medha Kambli'),
                    TextFieldForm(fieldname: 'Gender', hint: 'ex: Male'),
                    TextFieldForm(fieldname: 'Age', hint: 'ex: 25'),
                    TextFieldForm(fieldname: 'Email', hint: 'ex: example@gmail.com'),
                    TextFieldForm(fieldname: 'Phone', hint: 'ex: +91 8888888888'),
                    TextFieldForm(fieldname: 'Create Password', hint: 'ex: yourpassword'),
                    CustomButton(buttonText: 'Next', buttonColor: Pallete.primaryThemeColor,onpressed: (){
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder:
                              (context) =>
                              SignUpAuthScreen(),
                          )
                      );
                    },),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
