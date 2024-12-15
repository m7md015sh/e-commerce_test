import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceAndBuyNowSection extends StatelessWidget {
  const PriceAndBuyNowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Row(
        children: [
          // جزء السعر مع AspectRatio
          Expanded(
            flex: 2,
            child: AspectRatio(
              aspectRatio: 3 / 1, // التحكم في النسبة بين العرض والارتفاع
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff7b61ff),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16.r),
                    topLeft: Radius.circular(16.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '\$140.00',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        'Unit price',
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 10.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // زر الشراء مع AspectRatio
          Expanded(
            flex: 2,
            child: AspectRatio(
              aspectRatio: 3 / 1, // التحكم في النسبة بين العرض والارتفاع
              child: GestureDetector(
                onTap: () {
                  // أضف وظيفة الزر هنا
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff6953d9),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(16.r),
                      topRight: Radius.circular(16.r),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
