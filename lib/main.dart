//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:kloti_app/anasayfa.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'assets/images/splash.png',
          fit: BoxFit.scaleDown,
        ),
        nextScreen: AnaSayfa(),
        splashTransition: SplashTransition.sizeTransition,
        backgroundColor: Colors.blue.shade700,
        duration: 3500,
        splashIconSize: 370,
      ),
    );
  }
}
