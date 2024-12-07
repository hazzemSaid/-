import 'package:flutter/material.dart';
import 'package:quran_app/features/home/presentation/view/widget/quranlearnwidget.dart';

import 'CustomCardCharacterGrid.dart';
import 'appBarCompletely.dart';
import 'qurancard.dart';
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
          const SizedBox(
            height: 60,
          ),
          const quranLearningWidget(),
          const SizedBox(
            height: 30,
          ),
          const quradcard(),
          const SizedBox(
            height: 30,
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                'استمع الي القرآن',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Tajawal',
                ),
              ),
            ),
          ),
          Container(
            child: const CustomCardCharacterGrid(),
          )
        ],
      ),
    );
  }
}
