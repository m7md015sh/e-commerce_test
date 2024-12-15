import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/core/resources/assets_manager.dart';
import 'package:test1/core/resources/color_manager.dart';
import 'package:test1/core/resources/styles_manager.dart';

class PopularProductCard extends StatelessWidget {
  const PopularProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorManager.white,
      elevation: 0.1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: IntrinsicHeight(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorManager.lighterGray,
              width: 1.w,
            ),
            borderRadius: BorderRadius.circular(16.r),
          ),
          width: 250.w,
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: Image.network(
                        NetworkImages.test,
                        height: 120.h,
                        width: 120.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 8.h,
                      right: 8.w,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 4.h),
                        decoration: BoxDecoration(
                          color: ColorManager.red,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Text('20% off',
                            style: getBoldStyle(
                                color: ColorManager.white, fontSize: 12.sp)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('LIPSY LONDON',
                        style: getRegularStyle(
                            color: ColorManager.grey, fontSize: 10.sp)),
                    SizedBox(height: 4.h),
                    Text(
                      'Mountain Warehouse for ...',
                      style: getBoldStyle(
                          color: ColorManager.black, fontSize: 14.sp),
                      maxLines: 2,
                    ),
                    Row(
                      children: [
                        Text('\$420.0',
                            style:
                                getBoldStyle(color: ColorManager.primaryColor)),
                        SizedBox(width: 8.w),
                        Text(
                          '\$410.0',
                          style: getRegularStyle(
                                  color: ColorManager.grey, fontSize: 10.sp)
                              .copyWith(decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
