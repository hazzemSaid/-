import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:quran_app/features/splash/presentation/screens/getstart.dart';

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
            child: const onboaringone(),
          ),
          Container(
            child: const onboaringone(),
          ),
          Container(
            child: const onboaringone(),
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

class onboaringone extends StatelessWidget {
  const onboaringone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 146, 191, 182),
            Color.fromARGB(255, 146, 191, 182),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'هنا ستجد كل ما يحتاجه المسلم في حياته اليوميه',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
                fontFamily: 'tajawal',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'استمتع بالكثير من المميزات الإسلاميه',
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontFamily: 'tajawal',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/5094753-removebg-preview 1.png'),
                ),
              ),
            )
          ],
        ));
  }
}
