import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medireach/utils/pallete.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Pallete.primaryThemeColor,
        body: Center(
          child: Image.asset('assets/images/logo.png'),
        ),
      );
  }
}
