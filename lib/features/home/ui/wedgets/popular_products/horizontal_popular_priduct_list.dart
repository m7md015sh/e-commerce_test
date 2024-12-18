import 'package:flutter/material.dart';
import 'package:test1/features/product_details/product_details.dart';

import 'popular_product_card.dart';

class HorizontalProductList extends StatelessWidget {
  const HorizontalProductList({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: PopularProductCard(
                onTap: onTap,
              ));
        },
      ),
    );
  }
}
