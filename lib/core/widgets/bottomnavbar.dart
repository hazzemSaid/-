import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quran_app/features/Alzkar/AlzkarScreen.dart';
import 'package:quran_app/features/home/presentation/view/screens/HomeScreen.dart';

class homeBottomNavigation extends StatefulWidget {
  homeBottomNavigation({
    super.key,
    required this.selectedIndex,
  });
  int selectedIndex;

  @override
  State<homeBottomNavigation> createState() => _homeBottomNavigationState();
}

class _homeBottomNavigationState extends State<homeBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        fixedColor: const Color.fromARGB(255, 0, 160, 138),
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.selectedIndex,
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        iconSize: 26,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        unselectedItemColor: const Color.fromARGB(255, 133, 128, 128),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
            ),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.quran,
              ),
              label: "القرآن الكريم"),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.bookOpen,
            ),
            label: "الحديث الشريف",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.book,
            ),
            label: "الاذكار",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.list,
            ),
            label: "القائمه",
          ),
        ],
        onTap: (indx) {
          if (indx == 0) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const HomeScreen();
            }));
          } else if (indx == 1) {
            print('Quran');
          } else if (indx == 2) {
            print('Hadith');
          } else if (indx == 3) {
            print('Azkar');
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const AlzkarScreen();
            }));
          } else if (indx == 4) {
            print('List');
          }
          widget.selectedIndex = indx;
          setState(() {});
        });
  }
}

class SettingScreen extends StatelessWidget {
  const SettingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: const Center(
        child: Text('Setting Screen'),
      ),
    );
  }
}
