import 'package:flutter/material.dart';
import 'package:quran_app/core/test.dart';

class customHomeCard extends StatelessWidget {
  final int index;
  const customHomeCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.2,
      child: Column(
        children: [
          Image(
            height: MediaQuery.of(context).size.height * 0.15,
            image: AssetImage(Test.itemHomepage[index]['image']),
          ),
          const SizedBox(height: 10),
          Text('${Test.itemHomepage[index]['title']}',
              style: const TextStyle(
                fontFamily: "Rubik",
                fontSize: 25,
                fontWeight: FontWeight.w900,
              )),
        ],
      ),
    );
  }
}
