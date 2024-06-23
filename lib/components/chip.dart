import 'package:flutter/material.dart';

class CostumChip extends StatelessWidget {
  const CostumChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: Colors.cyan[100], borderRadius: BorderRadius.circular(20)),
      child: const Text(
        "23:43:33",
        style: TextStyle(),
      ),
    );
  }
}
