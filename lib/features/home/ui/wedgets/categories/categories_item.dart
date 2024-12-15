import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/core/resources/color_manager.dart';
import 'package:test1/core/resources/styles_manager.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final IconData? icon;

  const CategoryButton({
    super.key,
    required this.text,
    this.isSelected = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: isSelected ? ColorManager.primaryColor : ColorManager.white,
        borderRadius: BorderRadius.circular(30.r),
        border: Border.all(color: ColorManager.grey),
      ),
      child: Row(
        children: [
          if (icon != null)
            Icon(
              icon,
              color: isSelected ? ColorManager.white : ColorManager.black,
              size: 16.sp,
            ),
          if (icon != null) SizedBox(width: 5.w),
          Text(
            text,
            style: getBoldStyle(
              color: isSelected ? ColorManager.white : ColorManager.black,
              fontSize: 13.sp,
            ),
          ),
        ],
      ),
    );
  }
}
