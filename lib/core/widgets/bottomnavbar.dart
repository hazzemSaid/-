import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quran_app/features/home/presentation/view/screens/HomeScreen.dart';

import '../../features/listen_quran/presentation/view/screen/QuranPlayerCharacter.dart';
import '../../features/setting/presentation/view/screen/setting.dart';

class homeBottomNavigation extends StatefulWidget {
  homeBottomNavigation({
    super.key,
    required this.selectedIndex,
  });
  int selectedIndex = 0;

  @override
  State<homeBottomNavigation> createState() => _homeBottomNavigationState();
}

class _homeBottomNavigationState extends State<homeBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        fixedColor: Color.fromARGB(255, 0, 0, 0),
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.selectedIndex,
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
            print('Quran');
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const QuranPlayerCharacter()));
          } else if (indx == 2) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const settingsScreen()));
            print('Settings');
          } else {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const HomeScreen()));
            print('Home');
          }
          widget.selectedIndex = indx;
          setState(() {});
        });
  }
}
