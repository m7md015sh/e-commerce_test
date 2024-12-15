import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/features/home/ui/wedgets/categories/categories_horizontal_list_view.dart';

import 'widgets/favoraite_filters_widgets.dart';
import 'widgets/favorite_list_view.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: const CategoriesWidget(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
              child: const FavoriteFilterWidget(),
            ),
          ),
          const FavoriteListView() ,
        ],
      ),
    );
  }
}
