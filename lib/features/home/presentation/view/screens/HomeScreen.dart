import 'package:flutter/material.dart';

import '../widget/homescreenbody.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(225, 252, 252, 252),
      body: homeScreenContent(),
    );
  }
}
