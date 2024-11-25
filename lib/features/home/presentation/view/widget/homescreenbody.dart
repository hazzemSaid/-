import 'package:flutter/material.dart';
import 'package:quran_app/features/home/presentation/view/widget/quranlearnwidget.dart';

import 'appBarCompletely.dart';
import 'rowOfHomeItems.dart';

class homeScreenContent extends StatelessWidget {
  const homeScreenContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Stack(
            clipBehavior: Clip.none,
            children: [
              appBarCompletely(),
              rowOfHomeItems(),
            ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.1,
          ),
          const quranLearningWidget(),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.04,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.grey.withOpacity(0.5),
                  Colors.grey.withOpacity(0.4),
                  Colors.grey.withOpacity(0.2),
                  Colors.grey.withOpacity(0.1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.topCenter,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(
                  image: AssetImage(
                    'assets/images/quran.png',
                  ),
                  height: 75,
                ),
                Icon(
                  Icons.arrow_left_sharp,
                  size: 30,
                ),
                Text(
                  'اكمل القراءه',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo',
                    height: 1.5,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
