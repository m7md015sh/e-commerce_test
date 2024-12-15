import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/features/home/ui/wedgets/popular_products/horizontal_popular_priduct_list.dart';
import 'package:test1/features/home/ui/wedgets/text_before_section.dart';
import 'package:test1/features/product_details/details_cubit/details_cubit.dart';
import 'package:test1/features/product_details/details_cubit/details_state.dart';
import 'package:test1/features/product_details/wedgits/dialogName.dart';
import 'package:test1/features/product_details/wedgits/line_space.dart';
import 'package:test1/features/product_details/wedgits/price_and_buy_now_section.dart';
import 'package:test1/features/product_details/wedgits/product_info_widget.dart';
import 'package:test1/features/product_details/wedgits/rating_summary.dart';


class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProductDetailsCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Product Details'),
        ),
        bottomNavigationBar: const PriceAndBuyNowSection(),

        body: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
          builder: (context, state) {
            int currentIndex = 0;
            final imageUrls = context.read<ProductDetailsCubit>().imageUrls;

            if (state is ProductDetailsIndexUpdated) {
              currentIndex = state.currentIndex;
            }

            return SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 400.0,
                    child: Stack(
                      children: [
                        PageView.builder(
                          itemCount: imageUrls.length,
                          controller: PageController(viewportFraction: 0.9),
                          onPageChanged: (int index) {
                            context
                                .read<ProductDetailsCubit>()
                                .changeImage(index);
                          },
                          itemBuilder: (_, i) {
                            return Transform.scale(
                              scale: i == currentIndex ? 1 : 0.9,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 1.0),
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
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 2.0),
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
                  const ProductInfoWidget(
                      brand: 'Calvin Klein',
                      title: 'Calvin Klein Monogram Logo Crewneck T-Shirt - Men',
                      availability: 'Available',
                      rating: 5,
                      reviewsCount: 4,
                      description: 'Crafted from soft cotton for an effortless feel, this Calvin Klein t-shirt features an oversized monogram logo for an iconic, retro-inspired look. Detailed with a crewneck, a straight hem and twin-needle topstitching in a wide array of colors.',
                  ),

                  const LineSpaceWidget(),
                  const DialogName(title: 'Product Details', icon: Icons.shopping_bag),
                  const DialogName(title: 'Shopping Information', icon: Icons.directions_bus),
                  const DialogName(title: 'Returns', icon: Icons.backpack_outlined),

                  RatingSummaryWidget(averageRating: 3.4, totalReviews: 5, ratingsDistribution: const [0,0.1,0.2,0.3,0.8]),
                  const LineSpaceWidget(),
                  const DialogName(title: 'Reviews', icon: Icons.comment),
                  /*===================================Similar Products Section==========================================*/
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: TextBeforeSection(text: 'Similar Products')),
                  const HorizontalProductList(),

                  /*===================================Similar Products Section==========================================*/


                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
