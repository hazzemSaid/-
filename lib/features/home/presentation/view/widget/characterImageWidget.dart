import 'package:flutter/material.dart';

class characterImageWidget extends StatelessWidget {
  const characterImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
        image: DecorationImage(
          image: NetworkImage(
              "https://ar.assabile.com/media/person/200x256/yasser-al-dossari.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
