import 'package:flutter/material.dart';

import 'homeitemrow.dart';

class rowOfHomeItems extends StatelessWidget {
  const rowOfHomeItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.sizeOf(context).height * 0.25,
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height * 0.09,
        child: const HomeItemRow(),
      ),
    );
  }
}
