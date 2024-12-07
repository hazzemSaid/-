import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:quran_app/features/boarding/presentation/view/widgets/onboaring1.dart';
import 'package:quran_app/features/splash/presentation/screens/getstart.dart';

import '../widgets/onboarding2.dart';
import '../widgets/onboarding3.dart';

class WelcomeBoardingViewONE extends StatelessWidget {
  const WelcomeBoardingViewONE({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: OnBoardingSlider(
        pageBackgroundGradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 146, 191, 182),
            Color.fromARGB(255, 146, 191, 182),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        headerBackgroundColor: Colors.white,
        finishButtonText: 'لنبدأ',
        finishButtonTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: 'tajawal',
          fontWeight: FontWeight.bold,
        ),
        finishButtonStyle: FinishButtonStyle(
            backgroundColor: const Color.fromARGB(255, 26, 35, 33),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            )),
        background: [
          Container(),
          Container(),
          Container(),
        ],
        totalPage: 3,
        speed: 2,
        pageBodies: [
          Container(
            child: const firstOnboardingScreen(),
          ),
          Container(
            child: secondOnboardingScreen(),
          ),
          Container(
            child: threadedOnboardingScreen(),
          ),
        ],
        onFinish: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const IntroductoryScreen()));
        },
      ),
    );
  }
}
