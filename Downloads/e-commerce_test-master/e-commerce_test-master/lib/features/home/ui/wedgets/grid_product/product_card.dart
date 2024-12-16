import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/core/core/utils/colors.dart';

import 'package:test1/features/home/ui/wedgets/description_product.dart';

class ProductCard extends StatelessWidget {
  final image;
  final name;
  final prand;
  final price;
  final price_after_desc;

  ProductCard({
    this.name,
    this.prand,
    this.price,
    this.price_after_desc,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w, // استخدم .w لتحديد العرض بالنسبة لحجم الشاشة
      height: 300.h, // استخدم .h لتحديد الارتفاع بالنسبة لحجم الشاشة
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorsManager.lighterGray,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Card(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(8.0)),
              child: Image.network(
                image,
                fit: BoxFit.fitHeight,
                height: 140.h, // استخدم .h للارتفاع بناءً على حجم الشاشة
                width: double.infinity,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Description_Product(
                name: '$name',
                price: '$price',
                price_after_desc: '$price_after_desc',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
