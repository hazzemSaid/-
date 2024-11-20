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
              GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      title: Text('سورة البقره'),
                      subtitle: Text('القارئ محمد اللحيدان'),
                      trailing: Icon(Icons.play_arrow),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
