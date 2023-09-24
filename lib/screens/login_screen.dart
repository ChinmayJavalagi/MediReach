import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medireach/components/text_field.dart';
import 'package:medireach/screens/signup_screen.dart';
import 'package:medireach/utils/pallete.dart';
import '../components/custom_button.dart';
import '../local_auth_api.dart';
import '../utils/constants.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Future<void> auth() async {
    final isAuthenticated =  LocalAuthApi.authenticate();
    if(await isAuthenticated){
      Navigator.pushNamed(context, SignUpScreen.id
      );
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // auth();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30,left: 10,right: 10,bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Login",
                  style: GoogleFonts.manrope(
                    textStyle: kHeaderTextStyle,
                  ),
                ),
                SizedBox(height: 50,),
                TextFieldForm(fieldname: "Email", hint: "ex: example@gmail.com"),
                TextFieldForm(fieldname: "Password", hint: "ex: yourpassword"),
                SizedBox(height: 35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(color: Pallete.grayColor,height: 1,width: 100,),
                    Text(
                      'OR',
                      style:
                          GoogleFonts.manrope(textStyle: kTextFieldHintTextStyle),
                    ),
                    Container(color: Pallete.grayColor,height: 1,width: 100,),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45.0,bottom: 20),
                  child: Image.asset('assets/images/pngwing 1.png'),
                ),

                Text(
                  'Login With Your Fingerprint',
                  style: GoogleFonts.manrope(textStyle: kQuestionHeaderTextStyle),
                ),
                SizedBox(height: 20,),
                CustomButton(buttonText: 'Login', buttonColor: Pallete.primaryThemeColor,onpressed: auth,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
