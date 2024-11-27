import 'package:flutter/material.dart';

import '../../../../auth/presentation/screens/login.dart';
import '../../../../auth/presentation/screens/register.dart';

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
              customauthcontainer(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                text: 'تسجيل الدخول',
                color: Colors.cyan,
              ),
              customauthcontainer(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const UserRegistrationScreen()));
                },
                text: 'انشاء حساب',
                color: Colors.white12,
              )
            ],
          )),
    );
  }
}

class customauthcontainer extends StatelessWidget {
  const customauthcontainer({
    super.key,
    required this.onTap,
    required this.text,
    required this.color,
  });
  final VoidCallback onTap;
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.07,
        width: MediaQuery.sizeOf(context).width * 0.8,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: const LinearGradient(
              colors: [
                //background: linear-gradient(89.15deg, #00A08A 3.05%, #04E7C6 96.98%);
                Color.fromARGB(255, 0, 160, 138),
                Color.fromARGB(255, 4, 231, 198),
                Color.fromARGB(255, 4, 231, 198),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        margin: const EdgeInsets.all(10),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 19,
            fontFamily: 'Tajawal',
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
