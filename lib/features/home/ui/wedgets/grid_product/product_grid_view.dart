import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/features/home/home_cubit/product_cubit/product_cubit.dart';
import 'package:test1/features/home/home_cubit/product_cubit/product_state.dart';

import 'product_card.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(builder: (context, state) {
      if (state is ProductStateSuccess) {
        return GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          // Disable scrolling
          shrinkWrap: true,
          padding: const EdgeInsets.all(8.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // عدد الأعمدة
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.7,
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            return ProductCard(
              name: state.books.data.products[index].name,
              image: state.books.data.products[index].image,
              price: state.books.data.products[index].price,
              price_after_desc: state.books.data.products[index].discount,
            );
          },
        );
      } else if (state is ProductStateLoading) {
        return Center(child: CircularProgressIndicator());
      } else {
        return Center(
          child: Text('error'),
        );
      }
    });
  }
}
