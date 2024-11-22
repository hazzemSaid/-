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
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.sizeOf(context).width * 0.3,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Image(
              height: MediaQuery.of(context).size.height * 0.15,
              image: AssetImage(Test.itemHomepage[index]['image']),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text('${Test.itemHomepage[index]['title']}',
                style: TextStyle(
                  fontFamily: "Rubik",
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                )),
          ),
        ],
      ),
    );
  }
}
