import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test1/features/favorits_screen/widgets/text_and_icon.dart';

class FavoriteFilterWidget extends StatelessWidget {
  const FavoriteFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const TextAndIcon(
            text: 'Filters', iconAsset: 'assets/icons/filter.svg'),
        const TextAndIcon(
            text: 'Filters', iconAsset: 'assets/icons/lowest_to_height.svg'),
        SvgPicture.asset(
          'assets/icons/list.svg',
          height: 18.h,
          width: 20.w,
        )
      ],
    );
  }
}
