
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medireach/local_auth_api.dart';
import 'package:medireach/screens/login_screen.dart';
import 'package:medireach/screens/signup_screen.dart';
import 'package:medireach/utils/pallete.dart';

import '../components/custom_button.dart';
import '../utils/constants.dart';

class SignUpAuthScreen extends StatefulWidget {
  @override
  State<SignUpAuthScreen> createState() => _SignUpAuthScreenState();
}

class _SignUpAuthScreenState extends State<SignUpAuthScreen> {

  Future<void> auth() async {
    final isAuthenticated =  LocalAuthApi.authenticate();
    if(await isAuthenticated){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginScreen()));
    }
  }

  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    auth();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 30,left: 10,right: 10,bottom: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Sign Up',
                style: GoogleFonts.manrope(textStyle: kHeaderTextStyle),
              ),
              SizedBox(
                height: 150,
              ),
              Image.asset('assets/images/pngwing 1.png'),
              Text(
                'Scan Your Fingerprint',
                style: GoogleFonts.manrope(textStyle: kQuestionHeaderTextStyle),
              ),
              SizedBox(height: 280,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // CustomButton(buttonColor: Pallete.grayColor2,buttonText: 'Skip',onpressed: (){
                  //   Navigator.pushReplacement(context,
                  //       MaterialPageRoute(builder:
                  //           (context) =>
                  //           SignUpScreen(),
                  //       )
                  //   );
                  // },),
                  // CustomButton(buttonText: 'Register', buttonColor: Pallete.primaryThemeColor,onpressed: (){
                  //   Navigator.pushReplacement(context,
                  //       MaterialPageRoute(builder:
                  //           (context) =>
                  //           SignUpScreen(),
                  //       )
                  //   );
                  // },)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
