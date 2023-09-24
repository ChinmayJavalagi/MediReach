import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medireach/utils/pallete.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    LoginScreen()
            )
        )
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
