import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/widgets/bottomnavbar.dart';

class AlzkarScreen extends StatelessWidget {
  const AlzkarScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: const PreferredSize(
            preferredSize: const Size.fromHeight(28.0),
            child: const SizedBox(),
          ),
          //background: rgba(0, 160, 138, 1);
          leading: IconButton(
            icon: const Icon(
              FontAwesomeIcons.arrowLeft,
              color: Colors.white,
              size: 20,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Align(
            alignment: Alignment.center,
            child: const Text('الاذكار اليوميه',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Tajawal',
                  color: Colors.white,
                )),
          ),
          backgroundColor: const Color.fromARGB(225, 0, 160, 138),
        ),
        bottomNavigationBar: homeBottomNavigation(
          selectedIndex: 3,
        ),
        body: ListView.builder(
            itemCount: Azkar.azkar.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: ListTile(
                  title: Text(
                    Azkar.azkar[index],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Tajawal',
                    ),
                  ),
                  trailing: const Icon(
                    FontAwesomeIcons.arrowRight,
                    color: Colors.black,
                  ),
                  onTap: () {
                    print('Azkar');
                  },
                ),
              );
            }));
  }
}

class Azkar {
  static const List<String> azkar = [
    'اذكار الصباح',
    'اذكار المساء',
    'اذكار الوضوء',
    'اذكار الصلاة',
    'اذكار الاستيقاظ',
    'اذكار النوم',
    'اذكار الطعام',
    'اذكار السفر',
  ];
}
