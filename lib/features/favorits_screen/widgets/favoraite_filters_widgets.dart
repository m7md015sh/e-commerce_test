import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test1/core/resources/assets_manager.dart';
import 'package:test1/core/resources/strings_manager.dart';
import 'package:test1/features/favorits_screen/widgets/text_and_icon.dart';

class FavoriteFilterWidget extends StatelessWidget {
  const FavoriteFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Filters Section
        const Flexible(
          flex: 5,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: TextAndIcon(
              text: AppStrings.filters,
              iconAsset: IconAssets.filterIcon,
            ),
          ),
        ),
        SizedBox(width: 16.w), // Add spacing between elements

        // Price Filter Section
        const Flexible(
          flex: 10,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
            child: TextAndIcon(
              text: AppStrings.priceFilter,
              iconAsset: IconAssets.lowestToHeight,
            ),
          ),
        ),
        SizedBox(width: 16.w), // Add spacing between elements

        // List Icon Section
        Flexible(
          flex: 1,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Align(
              alignment: Alignment.centerRight,
              child: SvgPicture.asset(
                IconAssets.listFilterIcon,
                height: 18.h,
                width: 20.w,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
