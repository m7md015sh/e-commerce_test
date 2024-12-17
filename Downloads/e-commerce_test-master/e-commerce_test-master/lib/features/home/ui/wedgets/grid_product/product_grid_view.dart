import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/core/functions/navigation.dart';
import 'package:test1/features/home/home_cubit/home_cubit.dart';
import 'package:test1/features/home/home_cubit/home_states.dart';
import 'package:test1/features/product_details/product_details.dart';
import 'product_card.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      buildWhen: (previous, current) =>
          current is SuccessgetAllProductsStates ||
          current is LoadinggetAllProductsStates ||
          current is ErrorgetAllProductsStates,
      builder: (context, state) {
        final HomeCubit cubit = context.read<HomeCubit>();

        if (state is LoadinggetAllProductsStates) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is ErrorgetAllProductsStates) {
          return Center(
            child: Text(
              state.error,
              style: TextStyle(fontSize: 16.sp),
            ),
          );
        }

        if (state is SuccessgetAllProductsStates) {
          if (cubit.productModel?.data?.data == null ||
              cubit.productModel!.data!.data!.isEmpty) {
            return Center(
              child: Text(
                'No products found',
                style: TextStyle(fontSize: 16.sp),
              ),
            );
          }

          return Container(
            padding: EdgeInsets.all(8.0.w),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0.w,
                mainAxisSpacing: 8.0.h,
                childAspectRatio: 1.w / 1.6.h,
              ),
              itemCount: cubit.productModel!.data!.data!.length,
              itemBuilder: (context, index) {
                final product = cubit.productModel!.data!.data![index];
                return GestureDetector(
                  onTap: () {
                    push(context, const ProductDetailsPage());
                  },
                  child: ProductCard(
                    name: product.name,
                    image: product.imageUrl,
                    price: product.comparePrice,
                    price_after_desc: product.disc,
                  ),
                );
              },
            ),
          );
        }

        // Default fallback for unexpected states
        return const SizedBox.shrink();
      },
    );
  }
}
