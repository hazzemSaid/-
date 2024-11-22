import 'package:flutter/material.dart';
import 'package:quran_app/features/home/presentation/view/widget/characterImageWidget.dart';

class CustomCardCharacterGrid extends StatelessWidget {
  const CustomCardCharacterGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Two items per row
        childAspectRatio: 0.8, // Adjust ratio to make items taller
      ),
      physics:
          const NeverScrollableScrollPhysics(), // Prevent scroll if nested in a scrollable view
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
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 7,
                offset: const Offset(0, 3), // Shadow position
              ),
            ],
          ),
          child: const Column(
            children: [
              Expanded(
                flex: 4,
                child: characterImageWidget(),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "ياسر الدوسري",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
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
