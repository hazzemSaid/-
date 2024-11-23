import 'package:flutter/material.dart';

class customNotificationIcon extends StatelessWidget {
  const customNotificationIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(100),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          Icons.notifications_sharp,
          color: Colors.white,
        ),
      ),
    );
  }
}
