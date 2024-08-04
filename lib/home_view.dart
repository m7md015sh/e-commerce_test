import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/core/api_service.dart';
import 'package:test1/features/home/data/repos/home_repo_imp.dart';
import 'package:test1/features/home/home_cubit/carusal_cubit/carusal_cubit.dart';
import 'package:test1/features/home/ui/wedgets/carousal_widget.dart';
import 'package:test1/features/home/ui/wedgets/categories/categories_horizontal_list_view.dart';
import 'package:test1/features/home/ui/wedgets/flash_sale/super_flash_sale_counter.dart';
import 'package:test1/features/home/ui/wedgets/popular_products/horizontal_popular_priduct_list.dart';
import 'package:test1/features/home/ui/wedgets/grid_product/product_grid_view.dart';
import 'package:test1/features/home/ui/wedgets/flash_sale/flash_sale_horizontal_list_view.dart';
import 'package:test1/features/home/ui/wedgets/text_before_section.dart';
import 'features/home/home_cubit/product_cubit/product_cubit.dart';



class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hamada store')),
      body: CustomScrollView(
        slivers: [
          // Horizontal List 1
          SliverToBoxAdapter(
            child: BlocProvider(
              create: (context) => CarouselCubit(HomeLogic(ApiService(Dio())))..fetchCarouselCubit(),
              child: SizedBox(
                height: 250.h,
                child: CarouselScreen(),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: TextBeforeSection(text: 'Categorise'),
          ),
          // Horizontal List 2
          SliverToBoxAdapter(
            child: CategoriesWidget(),
          ),
          const SliverToBoxAdapter(
            child: TextBeforeSection(text: 'Popular Products'),
          ),
          SliverToBoxAdapter(
            child: HorizontalProductList(),
          ),
          const SliverToBoxAdapter(
            child: TextBeforeSection(text: 'Flash Sale'),
          ),
          SliverToBoxAdapter(
            child: FlashSaleListView(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: FlashSaleWidget(),
            ),
          ),
          const SliverToBoxAdapter(
            child: TextBeforeSection(text: 'All Products'),
          ),
          // Grid View
          SliverToBoxAdapter(
            child: BlocProvider(
              create: (context) => ProductCubit(HomeLogic(ApiService(Dio())))..fetchProductCubit(),
              child: const ProductGridView(),
            ),
          ),
        ],
      ),
    );
  }
}



