import 'package:flutter/material.dart';

import '../../../../../core/widgets/bottomnavbar.dart';

class QuranPlayerCharacter extends StatelessWidget {
  const QuranPlayerCharacter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: homeBottomNavigation(
        selectedIndex: 1,
      ),
      appBar: AppBar(),
      body: Center(
        child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)),
      ),
    );
  }
}
