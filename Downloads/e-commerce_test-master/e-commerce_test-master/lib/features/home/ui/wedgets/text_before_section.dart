import 'package:flutter/material.dart';
import 'package:test1/core/utils/colors.dart';

class TextBeforeSection extends StatelessWidget {
  const TextBeforeSection({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Text(
        text,
        style: const TextStyle(
          color: ColorsManager.gray,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
