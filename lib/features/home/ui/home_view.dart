import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/features/home/ui/wedgets/carousal_widget.dart';
import 'package:test1/features/home/ui/wedgets/categories/categories_horizontal_list_view.dart';
import 'package:test1/features/home/ui/wedgets/flash_sale/super_flash_sale_counter.dart';
import 'package:test1/features/home/ui/wedgets/popular_products/horizontal_popular_priduct_list.dart';
import 'package:test1/features/home/ui/wedgets/grid_product/product_grid_view.dart';
import 'package:test1/features/home/ui/wedgets/flash_sale/flash_sale_horizontal_list_view.dart';
import 'package:test1/features/home/ui/wedgets/text_before_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return   CustomScrollView(
          slivers: [
            /*===================================Carousal Section==========================================*/
            SliverToBoxAdapter(
              child: SizedBox(
                height: 250.h,
                child: CarouselScreen(),
              ),
            ),
            /*===================================Carousal Section==========================================*/

            /*===================================Categorise Section==========================================*/
            const SliverToBoxAdapter(
              child: TextBeforeSection(text: 'Categorise'),
            ),
            const SliverToBoxAdapter(
              child: CategoriesWidget(),
            ),
            /*===================================Categorise Section==========================================*/

            /*===================================Popular Products Section==========================================*/
            const SliverToBoxAdapter(
              child: TextBeforeSection(text: 'Popular Products'),
            ),
            SliverToBoxAdapter(
              child: HorizontalProductList(),
            ),
            /*===================================Popular Products Section==========================================*/

            /*===================================Flash Counter Sale Section==========================================*/
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: FlashSaleWidget(),
              ),
            ),
            /*===================================Flash Counter Sale Section==========================================*/

            /*===================================Flash Sale Products Section==========================================*/
            const SliverToBoxAdapter(
              child: TextBeforeSection(text: 'Flash Sale'),
            ),
            const SliverToBoxAdapter(
              child: FlashSaleListView(),
            ),
            /*===================================Flash Sale Products Section==========================================*/

            const SliverToBoxAdapter(
              child: TextBeforeSection(text: 'All Products'),
            ),
            // Grid View
            SliverToBoxAdapter(
              child:  ProductGridView(),
            ),
          ],
        );
  }
}
