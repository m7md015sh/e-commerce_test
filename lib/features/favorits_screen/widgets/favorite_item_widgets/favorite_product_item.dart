import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/features/favorits_screen/widgets/favorite_item_widgets/details_section_favorite.dart';
import 'package:test1/features/favorits_screen/widgets/favorite_item_widgets/image_section_favorite.dart';

class FavoriteProductItem extends StatelessWidget {
  const FavoriteProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 5.r,
            offset: Offset(0, 5.h),
          ),
        ],
      ),
      child: Row(
        children: [
          const ImageSection(),
          SizedBox(width: 10.w),
          const Expanded(
            child: DetailsSection(),
          ),
        ],
      ),
    );
  }
}