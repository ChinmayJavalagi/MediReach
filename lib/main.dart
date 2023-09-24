import 'package:flutter/material.dart';
import 'package:medireach/screens/login_screen.dart';
import 'package:medireach/screens/signup_screen.dart';
import 'package:medireach/screens/splash_screen.dart';
import 'package:medireach/utils/pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
      home: const SplashScreen(),
    );
  }
}
