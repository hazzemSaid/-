import 'package:flutter/material.dart';
import 'package:quran_app/features/home/presentation/view/widget/customappbar.dart';

Row AllAppBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Icon(Icons.notification_add),
      CustomAppBar(),
    ],
  );
}
