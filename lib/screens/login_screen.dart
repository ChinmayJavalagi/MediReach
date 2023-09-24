import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medireach/components/text_field.dart';
import 'package:medireach/screens/signup_screen.dart';
import 'package:medireach/utils/pallete.dart';
import '../components/custom_button.dart';
import '../utils/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Login",
                style: GoogleFonts.manrope(
                  textStyle: kHeaderTextStyle,
                ),
              ),
            ),
            TextFieldForm(fieldname: "Email", hint: "ex: example@gmail.com"),
            TextFieldForm(fieldname: "Password", hint: "ex: yourpassword"),
            CustomButton(buttonText: 'Login', buttonColor: Pallete.primaryThemeColor,onpressed: (){
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder:
                      (context) =>
                      SignUpScreen(),
                  )
              );
            },),
          ],
        ),
      ),
    );
  }
}
