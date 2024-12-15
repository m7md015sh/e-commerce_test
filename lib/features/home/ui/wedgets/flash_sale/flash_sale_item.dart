import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/core/resources/color_manager.dart';
import 'package:test1/core/resources/styles_manager.dart';
import 'package:test1/features/home/data/models/flash_sale_model.dart';

class FlashSaleItem extends StatelessWidget {
  const FlashSaleItem({super.key, required this.item, this.onTap});

  final FlashSaleModel item;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160.w,
        margin: EdgeInsets.symmetric(horizontal: 8.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: ColorManager.lighterMoreGray),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 2,
              child: Stack(
                children: [
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12.r)),
                      child: Image.network(
                        item.imageUrl,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10.h,
                    right: 10.w,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 8.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: ColorManager.red,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Text('${item.discount}% off',
                          style: getBoldStyle(
                              color: ColorManager.white, fontSize: 10.sp)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.brand,
                      style: getBoldStyle(
                          color: ColorManager.grey, fontSize: 10.sp)),
                  SizedBox(height: 4.h),
                  Text(item.name,
                      style: getBoldStyle(
                          color: ColorManager.black, fontSize: 12.sp)),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      Flexible(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            '\$${item.price.toStringAsFixed(1)}',
                            style: getBoldStyle(
                              color: ColorManager.primaryColor,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Flexible(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            '\$${item.originalPrice.toStringAsFixed(1)}',
                            style: getRegularStyle(
                              color: ColorManager.grey,
                              fontSize: 10.sp,
                            ).copyWith(
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
