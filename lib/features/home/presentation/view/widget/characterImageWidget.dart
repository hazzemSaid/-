import 'package:flutter/material.dart';

import '../../../../../core/test.dart';

class characterImageWidget extends StatelessWidget {
  const characterImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
        image: DecorationImage(
          image: AssetImage(
            Test.characters[3]['image']!,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
