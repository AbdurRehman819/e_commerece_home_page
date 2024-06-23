import 'package:flutter/material.dart';
import 'package:landingscreenpage/components/custom_button.dart';
import 'package:landingscreenpage/utils/colors.dart';
import 'package:landingscreenpage/utils/spacing.dart';

class CustomBanner extends StatelessWidget {
  final h, w;
  const CustomBanner({required this.h, required this.w});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          height: h.toDouble(),
          width: w.toDouble(),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient:
                  LinearGradient(colors: [primaryColor, primaryLightColor])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Explore Electronics",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  vspace,
                  const Text(
                    "Exchange for what you want",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                  vspace,
                  customButton(),
                ],
              ),
            ],
          ),
        ),
        Positioned(
            top: -50,
            right: -30,
            child: Image.asset(
              "assets/pc.png",
              height: 200,
            )),
      ],
    );
  }
}
