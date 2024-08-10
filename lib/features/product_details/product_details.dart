import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/features/product_details/details_cubit/details_cubit.dart';
import 'package:test1/features/product_details/details_cubit/details_state.dart';

class ProductDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProductDetailsCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Product Details'),
        ),
        body: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
          builder: (context, state) {
            int currentIndex = 0;
            final imageUrls = context.read<ProductDetailsCubit>().imageUrls;

            if (state is ProductDetailsIndexUpdated) {
              currentIndex = state.currentIndex;
            }

            return Column(
              children: [
                SizedBox(
                  height: 400.0,
                  child: Stack(
                    children: [
                      PageView.builder(
                        itemCount: imageUrls.length,
                        controller: PageController(viewportFraction: 0.9),
                        onPageChanged: (int index) {
                          context.read<ProductDetailsCubit>().changeImage(index);
                        },
                        itemBuilder: (_, i) {
                          return Transform.scale(
                            scale: i == currentIndex ? 1 : 0.9,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 1.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.network(
                                  imageUrls[i],
                                  fit: BoxFit.fill,
                                  width: double.infinity - 20,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      Positioned(
                        bottom: 20.0,
                        right: 40.0,
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Row(
                            children: imageUrls.asMap().entries.map((entry) {
                              return Container(
                                width: 8.0,
                                height: 8.0,
                                margin: const EdgeInsets.symmetric(horizontal: 2.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: currentIndex == entry.key
                                      ? const Color.fromRGBO(0, 0, 0, 0.9)
                                      : const Color.fromRGBO(0, 0, 0, 0.4),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Add other product details below the image carousel
              ],
            );
          },
        ),
      ),
    );
  }
}
