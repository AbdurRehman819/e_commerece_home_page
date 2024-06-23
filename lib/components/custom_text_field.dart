import 'package:flutter/material.dart';
import 'package:landingscreenpage/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: greyColor, borderRadius: BorderRadius.circular(12)),
        child: TextField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
                borderRadius: BorderRadius.circular(12),
              ),
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
              labelText: "Search product"),
        ));
  }
}
