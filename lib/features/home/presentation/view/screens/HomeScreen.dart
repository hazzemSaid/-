import 'package:flutter/material.dart';

import '../widget/homescreenbody.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'البحث',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'الاعدادات',
            ),
          ],
          onTap: (indx) {
            if (indx == 1) {
              print('Search');
            } else if (indx == 2) {
              print('Settings');
            } else {
              print('Home');
            }
          }),
      backgroundColor: const Color.fromARGB(225, 252, 252, 252),
      body: const homeScreenContent(),
    );
  }
}
