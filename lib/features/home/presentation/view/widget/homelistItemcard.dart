import 'package:flutter/material.dart';
import 'package:quran_app/features/home/presentation/view/widget/customhomecard.dart';

class HomeListItemCard extends StatelessWidget {
  const HomeListItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: customHomeCard(
            index: index,
          ),
        );
      },
    );
  }
}
