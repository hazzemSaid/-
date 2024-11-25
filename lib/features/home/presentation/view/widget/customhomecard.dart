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
      width: MediaQuery.of(context).size.width / 5,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Image(
                  image: AssetImage(Test.itemHomepage[index]['image']),
                ),
              ),
              Expanded(
                flex: 4,
                child: Flexible(
                  child: Text('${Test.itemHomepage[index]['title']}',
                      style: const TextStyle(
                        fontFamily: 'arial',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
