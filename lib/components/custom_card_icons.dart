import 'package:flutter/material.dart';
import 'package:landingscreenpage/utils/colors.dart';

class CustomIConCard extends StatelessWidget {
  final icon;
  const CustomIConCard({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: icon,
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 50,
      width: 50,
    );
  }
}
