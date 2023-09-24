import 'package:flutter/material.dart';
import 'package:medireach/screens/chatbot_screen.dart';
import 'package:medireach/screens/dashboard_screen.dart';
import 'package:medireach/screens/login_screen.dart';
import 'package:medireach/screens/signup_auth_screen.dart';
import 'package:medireach/screens/signup_screen.dart';
import 'package:medireach/screens/splash_screen.dart';
import 'package:medireach/screens/survey_screen.dart';
import 'package:medireach/utils/pallete.dart';

void main() {
  runApp(MediReach());
}

class MediReach extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediReach',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true).copyWith(
          scaffoldBackgroundColor: Pallete.whiteColor,
          appBarTheme: AppBarTheme(
            backgroundColor: Pallete.whiteColor,
          )
      ),
      initialRoute: ChatBotScreen.id,
      routes: {
        SplashScreen.id : (context)=> SplashScreen(),
        LoginScreen.id:(context)=> LoginScreen(),
        SignUpScreen.id : (context)=> SignUpScreen(),
        DashboardScreen.id : (context)=> DashboardScreen(),
        ChatBotScreen.id: (context)=> ChatBotScreen(),
        SurveyScreen.id : (context)=> SurveyScreen(),
      },
    );
  }
}
