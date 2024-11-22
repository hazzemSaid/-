import 'package:flutter/material.dart';
import 'package:quran_app/features/home/presentation/view/widget/CustomCardCharacterGrid.dart';

import 'allappbar.dart';
import 'homeitemrow.dart';
import 'qurancard.dart';

class homeScreenContent extends StatelessWidget {
  const homeScreenContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AllAppBar(),
            const SizedBox(
              height: 60,
              width: double.infinity,
            ),
            const HomeItemRow(),
            const SizedBox(
              height: 20,
              width: double.infinity,
            ),
            const quradcard(),
            const SizedBox(
              height: 20,
              width: double.infinity,
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'استمع الي القران',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cairo',
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
              width: double.infinity,
            ),
            const CustomCardCharacterGrid(),
          ],
        ),
      ),
    );
  }
}
