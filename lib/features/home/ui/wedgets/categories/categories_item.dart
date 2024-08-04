import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final IconData? icon;

  CategoryButton({
    required this.text,
    this.isSelected = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xff7b64f3) : Colors.white,
        borderRadius: BorderRadius.circular(30.r),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: [
          if (icon != null)
            Icon(
              icon,
              color: isSelected ? Colors.white : Colors.black,
              size: 16.sp,
            ),
          if (icon != null) SizedBox(width: 5.w),
          Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}