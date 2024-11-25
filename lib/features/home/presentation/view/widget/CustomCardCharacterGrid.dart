import 'package:flutter/material.dart';
import 'package:quran_app/core/test.dart';
import 'package:quran_app/features/home/presentation/view/widget/characterImageWidget.dart';

class CustomCardCharacterGrid extends StatelessWidget {
  const CustomCardCharacterGrid({super.key, this.scrollabel = false});
  final bool scrollabel;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Two items per row
        childAspectRatio: 0.8, // Adjust ratio to make items taller
      ),
      physics: scrollabel
          ? const AlwaysScrollableScrollPhysics()
          : const NeverScrollableScrollPhysics(),
      // Prevent scroll if nested in a scrollable view
      shrinkWrap: true,
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.7),
                spreadRadius: 1,
                blurRadius: 7,
                offset: const Offset(0, 4), // Shadow position
              ),
            ],
          ),
          child: Column(
            children: [
              const Expanded(
                flex: 4,
                child: characterImageWidget(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  color: Colors.white.withOpacity(.5),
                  padding: const EdgeInsets.all(8.0),
                  child: FittedBox(
                    child: Text(
                      Test.characters[3]['name']!,
                      style: const TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
