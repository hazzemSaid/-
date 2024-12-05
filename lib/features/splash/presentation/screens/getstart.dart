import 'package:flutter/material.dart';

import '../../../../auth/presentation/screens/login.dart';
import '../../../../auth/presentation/screens/register.dart';
import '../widget/customAuthContainer.dart';

class IntroductoryScreen extends StatelessWidget {
  const IntroductoryScreen({super.key});

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/images/logo.png'),
              ),
              const Text(
                'اقرأ القرأن الكريم بطريقه صحيحه وسهله وممتعه',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Tajawal',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              customAuthContainer(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                text: 'تسجيل الدخول',
                color: Colors.cyan,
              ),
              customAuthContainer(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UserRegistrationScreen()));
                },
                text: 'انشاء حساب',
                color: Colors.white12,
              )
            ],
          )),
    );
  }
}
