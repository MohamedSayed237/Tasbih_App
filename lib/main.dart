import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tasbih_app/screens/home_screen.dart';
import 'package:tasbih_app/screens/onboarding_screen.dart';
import 'package:tasbih_app/screens/splash_screen.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool onboardingComplete = prefs.getBool('onboardingComplete') ?? false;
  runApp(TasbihApp(onboardingComplete: onboardingComplete));
}

class TasbihApp extends StatelessWidget {
  final bool onboardingComplete;
  TasbihApp({required this.onboardingComplete});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: onboardingComplete ? '/home' : '/onboarding',
      routes: {
        '/home': (context) => HomeScreen(),
        '/onboarding': (context) => OnBoardingScreen(),
      },
    );
  }
}
