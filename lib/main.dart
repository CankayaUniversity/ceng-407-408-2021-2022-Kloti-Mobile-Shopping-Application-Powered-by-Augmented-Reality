

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_kloti/app/sign_in/my_login.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());


  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          splash: Image.asset(
            'assets/images/splash.png',
            fit: BoxFit.scaleDown,
          ),
       
          nextScreen:  const MyLogin(),
          splashTransition: SplashTransition.sizeTransition,
          backgroundColor: Colors.blue.shade700,
          duration: 3500,
          splashIconSize: 370,
        ),
      );
    
  }
}