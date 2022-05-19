
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:kloti_app/landing_page.dart';
import 'package:kloti_app/locator.dart';
import 'package:kloti_app/viewmodel/user_model.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupLocator();
  runApp(const MyApp());
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
        //Ağaca user model sınıfını enjekte ettik .Provider.of diyerek uygulamanın herhangi bir yerinden kullanılabilir .
        nextScreen:  ChangeNotifierProvider(
          create: (BuildContext context) =>UserModel(),
          child: LandingPage(),),
        splashTransition: SplashTransition.sizeTransition,
        backgroundColor: Colors.blue.shade700,
        duration: 3500,
        splashIconSize: 370,
      ),
    );
  }
}