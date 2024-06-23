import 'package:flutter/material.dart';
import 'package:landingscreenpage/utils/colors.dart';
import 'package:landingscreenpage/utils/spacing.dart';

class CustomCategoryCard extends StatelessWidget {
  final icon, text;
  const CustomCategoryCard({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          child: Icon(icon),
          decoration: BoxDecoration(
            color: greyColor,
            borderRadius: BorderRadius.circular(10),
          ),
          height: 50,
          width: 50,
        ),
        vspace,
        Text(text),
      ],
    );
  }
}
