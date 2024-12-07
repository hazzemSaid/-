import 'package:flutter/material.dart';

class LogoDisplay extends StatelessWidget {
  const LogoDisplay({
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
          Color.fromARGB(255, 3, 174, 140),
        ],
        end: Alignment.topLeft,
        begin: Alignment.bottomRight,
      )),
      child: const Center(
        child: Image(image: AssetImage('assets/images/logo.png')),
      ),
    );
  }
}
