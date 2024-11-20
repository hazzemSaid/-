import 'package:flutter/material.dart';
import 'package:quran_app/features/home/presentation/view/widget/allappbar.dart';
import 'package:quran_app/features/home/presentation/view/widget/homeitemrow.dart';

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
                    qurancustomwidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class qurancustomwidget extends StatelessWidget {
  const qurancustomwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
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
