import 'package:flutter/material.dart';

import 'getstart.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const IntroductoryScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 3, 174, 140),
          ],
          end: Alignment.topLeft,
          begin: Alignment.bottomRight,
        )),
        child: const Center(
          child: Image(image: AssetImage('assets/images/logo.png')),
        ),
      ),
    );
  }
}
