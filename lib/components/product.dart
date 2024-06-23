import 'package:flutter/material.dart';
import 'package:landingscreenpage/utils/colors.dart';

class ProductCard extends StatelessWidget {
  final BGPro;
  ProductCard({required this.BGPro});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(BGPro)),
          borderRadius: BorderRadius.circular(30)),
      child: Stack(
        children: [
          Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "White Lam",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Magazine",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: CircleAvatar(
              backgroundColor: greyColor,
              child: Icon(Icons.lock),
            ),
          )
        ],
      ),
    );
  }
}
