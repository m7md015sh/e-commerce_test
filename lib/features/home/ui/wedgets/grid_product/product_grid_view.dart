import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'product_card.dart';
import 'package:test1/features/home/home_cubit/product_cubit/product_cubit.dart';
import 'package:test1/features/home/home_cubit/product_cubit/product_state.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductStateSuccess) {
          return Container(
            padding: EdgeInsets.all(8.0.w),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true, // Makes grid responsive to content
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 600
                    ? 3
                    : 2, // Adjust columns based on screen size
                crossAxisSpacing: 8.0.w,
                mainAxisSpacing: 8.0.h,
                childAspectRatio: 1.w / 1.6.h, // maintains responsive ratio
              ),
              itemCount: state.books.data.products.length,
              itemBuilder: (context, index) {
                final product = state.books.data.products[index];
                return ProductCard(
                  name: product.name,
                  image: product.image,
                  price: product.price,
                  priceAfterDesc: product.discount.toDouble(),
                );
              },
            ),
          );
        } else if (state is ProductStateLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return Center(
            child: Text(
              'Error loading products',
              style: TextStyle(fontSize: 16.sp),
            ),
          );
        }
      },
    );
  }
}
