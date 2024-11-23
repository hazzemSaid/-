import 'package:flutter/material.dart';
import 'package:quran_app/core/test.dart';

Row CustomAppBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          'اهلا احمد',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      CircleAvatar(
        radius: 18,
        backgroundImage: NetworkImage(
          Test.ResourceUrl,
        ),
      ),
    ],
  );
}
