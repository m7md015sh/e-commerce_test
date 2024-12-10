import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: Image.network(
            'https://oshoplin.com/cdn/shop/products/c-ck-834-1.jpg?v=1672416105&width=1200',
            width: 100.w,
            height: 100.h,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 5.h,
          left: 5.w,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Text(
              'NEW',
              style: TextStyle(color: Colors.white, fontSize: 10.sp),
            ),
          ),
        ),
      ],
    );
  }
}