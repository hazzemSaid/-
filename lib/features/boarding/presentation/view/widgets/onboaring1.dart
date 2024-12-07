import 'package:flutter/material.dart';

class firstOnboardingScreen extends StatelessWidget {
  const firstOnboardingScreen({
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
