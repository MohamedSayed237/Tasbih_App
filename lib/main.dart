import 'package:flutter/material.dart';
import 'package:tasbih_app/screens/home_screen.dart';
import 'package:tasbih_app/screens/onboarding_screen.dart';
import 'package:tasbih_app/screens/splash_screen.dart';
void main() {
  runApp(const TasbihApp());
}

class TasbihApp extends StatelessWidget {
  const TasbihApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>SplashScreen(),
        '/intro':(context)=>OnBoardingScreen(),
        '/home':(context)=>HomeScreen(),
      },
    );
  }
}
