import 'package:flutter/material.dart';

import '../../../../../core/widgets/bottomnavbar.dart';

class settingsScreen extends StatelessWidget {
  const settingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: homeBottomNavigation(
        selectedIndex: 2,
      ),
      appBar: AppBar(
        title: Text('settingsScreen'),
      ),
      body: Center(
        child: Text('settingsScreen'),
      ),
    );
  }
}
