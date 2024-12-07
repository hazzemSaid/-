import 'package:flutter/material.dart';

import '../../../boarding/presentation/view/screens/boarding1.dart';
import '../widget/LogoDisplay.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(
        const Duration(milliseconds: 2800)); // Delay for 2.8 seconds
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const WelcomeBoardingViewONE()));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LogoDisplay(),
    );
  }
}
