import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medireach/utils/pallete.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushNamed(context, LoginScreen.id)
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Pallete.primaryThemeColor,
        body: Center(
          child: Image.asset('assets/images/logo.png'),
        ),
      );
  }
}
