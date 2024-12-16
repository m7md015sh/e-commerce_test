import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/features/home/ui/wedgets/categories/categories_item.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
      ),
      child: SizedBox(
        height: 45.h,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            CategoryButton(
              text: 'All Categories',
              isSelected: true,
            ),
            SizedBox(width: 10.w),
            CategoryButton(
              text: 'On Sale',
              icon: Icons.local_offer,
            ),
            SizedBox(width: 10.w),
            CategoryButton(
              text: "Man's",
              icon: Icons.male,
            ),
            SizedBox(width: 10.w),
            CategoryButton(
              text: 'Woman',
              icon: Icons.female,
            ),
            SizedBox(width: 10.w),
            CategoryButton(
              text: 'children',
              icon: Icons.child_care_sharp,
            ),
          ],
        ),
      ),
    );
  }
}
