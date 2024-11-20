import 'package:flutter/material.dart';

class QuranContentWidget extends StatelessWidget {
  const QuranContentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Flexible(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'اخر قراءه',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'IBM Plex Sans Arabic',
              color: Color.fromARGB(255, 133, 128, 128),
            ),
          ),
          Text(
            'سورة البقره',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo',
            ),
          ),
          Text(
            'رقم الايه 20',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo',
              color: Color.fromARGB(255, 133, 128, 128),
            ),
          )
        ],
      ),
    );
  }
}
