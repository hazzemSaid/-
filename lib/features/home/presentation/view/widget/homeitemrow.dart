import 'package:flutter/material.dart';
import 'package:quran_app/features/home/presentation/view/widget/homelistItemcard.dart';

class HomeItemRow extends StatelessWidget {
  const HomeItemRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: MediaQuery.of(context).size.height *
                0.15, // 20% of screen height
            child: const HomeListItemCard(),
          ),
        ),
      ],
    );
  }
}
