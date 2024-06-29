import 'package:flutter/material.dart';
import 'package:tasbih_app/screens/home_screen.dart';
import 'package:tasbih_app/screens/onboarding_screen.dart';
import 'package:tasbih_app/screens/splash_screen.dart';

void main() async {
  runApp(TasbihApp());
}

class TasbihApp extends StatelessWidget {
  TasbihApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
        '/onboarding': (context) => OnBoardingScreen(),
      },
    );
  }
}
