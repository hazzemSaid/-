import 'package:flutter/material.dart';
import 'package:quran_app/features/home/presentation/view/widget/customNotificationIcon.dart';

import 'customappbar.dart';

class appBarCompletely extends StatelessWidget {
  const appBarCompletely({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.3,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 34, 153, 135),
              Color.fromARGB(255, 36, 181, 159),
              Color.fromARGB(255, 113, 234, 215),
              Color.fromARGB(255, 63, 208, 186),
            ],
          ),
          shape: BoxShape.rectangle),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const customNotificationIcon(),
          const SizedBox(
            width: 90,
          ),
          CustomAppBar(),
        ],
      ),
    );
  }
}
