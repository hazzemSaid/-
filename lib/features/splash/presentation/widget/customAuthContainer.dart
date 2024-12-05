import 'package:flutter/material.dart';

class customAuthContainer extends StatelessWidget {
  const customAuthContainer({
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
