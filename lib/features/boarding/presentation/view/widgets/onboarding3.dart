import 'package:flutter/material.dart';

class threadedOnboardingScreen extends StatelessWidget {
  @override
  Widget build(Object context) {
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
              'قم بالاستماع الي افضل قراء الفرآن الكريم',
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
              'وقراءه الاحاديث والقراءه بالتجويد ومواقيت الصلاه',
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
                      'assets/images/5138493-removebg-preview 1.png'),
                ),
              ),
            )
          ],
        ));
  }
}
