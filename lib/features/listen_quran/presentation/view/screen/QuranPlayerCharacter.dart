import 'package:flutter/material.dart';

import '../../../../../core/widgets/bottomnavbar.dart';
import '../../../../home/presentation/view/widget/CustomCardCharacterGrid.dart';

class QuranPlayerCharacter extends StatelessWidget {
  const QuranPlayerCharacter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: homeBottomNavigation(
        selectedIndex: 1,
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text(
          'القرآن الكريم',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const characterDisplayScreen(),
    );
  }
}

class characterDisplayScreen extends StatelessWidget {
  const characterDisplayScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, left: 4.0, right: 4.0),
      child: Column(
        children: [
          const Expanded(
              flex: 1,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter a search term',
                ),
              )),
          Expanded(
            flex: 9,
            child: SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.1, // 20% of screen height
              child: characterDisplayRow(),
            ),
          ),
        ],
      ),
    );
  }
}

class characterDisplayRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SizedBox(
            height: MediaQuery.of(context).size.height *
                0.15, // 20% of screen height
            child: const CustomCardCharacterGrid(
              scrollabel: true,
            ),
          ),
        ),
      ],
    );
  }
}
