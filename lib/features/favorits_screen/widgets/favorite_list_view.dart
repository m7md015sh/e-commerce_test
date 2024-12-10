import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/features/favorits_screen/widgets/favorite_item_widgets/favorite_product_item.dart';

class FavoriteListView extends StatelessWidget {
  const FavoriteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return const FavoriteProductItem();
        },
        childCount: 10, // عدد العناصر
      ),
    );
  }
}
