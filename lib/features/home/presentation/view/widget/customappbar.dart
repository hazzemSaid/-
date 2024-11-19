import 'package:flutter/material.dart';
import 'package:quran_app/core/test.dart';

Row CustomAppBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          'اهلا ي احمد',
          style: TextStyle(
            fontFamily: "Rubik",
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      CircleAvatar(
        backgroundImage: NetworkImage(Test.ResourceUrl),
      ),
    ],
  );
}
