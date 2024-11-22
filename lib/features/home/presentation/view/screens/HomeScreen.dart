import 'package:flutter/material.dart';

import '../../../../../core/widgets/bottomnavbar.dart';
import '../widget/homescreenbody.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: homeBottomNavigation(
        selectedIndex: 0,
      ),
      backgroundColor: const Color.fromARGB(225, 252, 252, 252),
      body: const homeScreenContent(),
    );
  }
}
