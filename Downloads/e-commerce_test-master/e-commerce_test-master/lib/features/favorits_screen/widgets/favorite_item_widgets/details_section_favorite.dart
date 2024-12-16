import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Mango',
          style: TextStyle(fontSize: 12.sp, color: Colors.grey),
        ),
        Text(
          'Longsleeve Violeta',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Color: Orange',
              style: TextStyle(fontSize: 12.sp),
            ),
            Text(
              'Size: S',
              style: TextStyle(fontSize: 12.sp),
            ),
          ],
        ),
        SizedBox(height: 5.h),
        Row(
          children: [
            Text(
              '46\$',
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Row(
              children: [
                ...List.generate(
                  5,
                  (index) =>
                      Icon(Icons.star_border, size: 16.sp, color: Colors.grey),
                ),
                SizedBox(width: 5.w),
                Text(
                  '(0)',
                  style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
