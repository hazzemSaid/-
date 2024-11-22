import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/homescreenbody.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: homeBottomNavigation(),
      backgroundColor: Color.fromARGB(225, 252, 252, 252),
      body: homeScreenContent(),
    );
  }
}

class homeBottomNavigation extends StatefulWidget {
  const homeBottomNavigation({
    super.key,
  });

  @override
  State<homeBottomNavigation> createState() => _homeBottomNavigationState();
}

class _homeBottomNavigationState extends State<homeBottomNavigation> {
  @override
  int selectedIndex = 0;
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        fixedColor: Color.fromARGB(255, 0, 0, 0),
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
            ),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.readme,
            ),
            label: 'قارئ القرآن',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.cog,
            ),
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
          selectedIndex = indx;
          setState(() {});
        });
  }
}
