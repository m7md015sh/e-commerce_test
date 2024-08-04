import 'package:flutter/material.dart';
import 'package:test1/features/home/ui/wedgets/grid_product/product_card.dart';

import 'popular_product_card.dart';


class HorizontalProductList extends StatelessWidget {
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
            child: PopularProductCard(),
          );
        },
      ),
    );
  }
}