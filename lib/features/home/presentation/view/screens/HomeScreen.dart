import 'package:flutter/material.dart';
import 'package:quran_app/features/home/presentation/view/widget/allappbar.dart';
import 'package:quran_app/features/home/presentation/view/widget/homeitemrow.dart';
import 'package:quran_app/features/home/presentation/view/widget/qurancard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(225, 252, 252, 252),
      body: Padding(
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
            ],
          ),
        ),
      ),
    );
  }
}
