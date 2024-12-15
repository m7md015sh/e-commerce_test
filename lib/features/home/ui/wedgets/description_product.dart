import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/core/resources/color_manager.dart';
import 'package:test1/core/resources/styles_manager.dart';

class DescriptionProduct extends StatelessWidget {
  const DescriptionProduct({
    super.key,
    required this.name,
    this.brand,
    required this.price,
    required this.priceAfterDesc,
  });
  final String name;
  final String? brand;
  final String price;
  final String priceAfterDesc;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8.0),
        Text(
          'LIPSY LONDON',
          style: getRegularStyle(
            color: ColorManager.grey,
            fontSize: 10.sp,
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          name,
          style: getBoldStyle(
            color: ColorManager.black,
            fontSize: 14.sp,
          ).copyWith(overflow: TextOverflow.ellipsis),
          maxLines: 2,
        ),
        const SizedBox(height: 8.0),
        Row(
          children: [
            Text(
              price,
              style: getBoldStyle(
                color: ColorManager.primaryColor,
                fontSize: 12.sp,
              ),
            ),
            const SizedBox(width: 8.0),
            Text(
              priceAfterDesc,
              style: getRegularStyle(
                color: ColorManager.grey,
                fontSize: 10.sp,
              ).copyWith(
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
