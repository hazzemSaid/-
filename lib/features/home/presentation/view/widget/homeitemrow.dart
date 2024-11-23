import 'package:flutter/material.dart';
import 'package:quran_app/features/home/presentation/view/widget/homelistItemcard.dart';

class HomeItemRow extends StatelessWidget {
  const HomeItemRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: HomeListItemCard(),
        ),
      ],
    );
  }
}
