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
    return Column(
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
        const quranLearningWidget()
      ],
    );
  }
}
