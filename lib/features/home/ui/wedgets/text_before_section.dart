import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/core/resources/color_manager.dart';
import 'package:test1/core/resources/styles_manager.dart';

class TextBeforeSection extends StatelessWidget {
  const TextBeforeSection({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 12
      ),
      child: Text(text,style: getBoldStyle(color: ColorManager.grey,fontSize: 18.sp),

      ),
    );
  }
}