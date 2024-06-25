import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
import 'package:tasbih_app/screens/home_screen.dart';
class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});
  final List<Introduction> list = [
    Introduction(
      title: '',
      subTitle: 'يوفر لك تطبيق تسبيح مسبحة رقمية في هاتفك في اي وقت بدون انترنت',
      imageUrl: 'assets/images/intro_1.jpg',
    ),
    Introduction(
      title: '',
      subTitle: 'يوفر لك تطبيق تسبيح جميع الاذكار و الادعية',
      imageUrl: 'assets/images/intro_2.jpg',
    ),
    Introduction(
      title: '',
      subTitle: 'يوفر لك تطبيق تسبيح منبه للصلوات مع التذكير بها قبل الاذان',
      imageUrl: 'assets/images/intro_3.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      backgroudColor: Color(0xc8e1e5),
      onTapSkipButton: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      },
    );
  }
}
