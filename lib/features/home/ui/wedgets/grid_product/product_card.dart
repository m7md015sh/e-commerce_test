import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/core/resources/color_manager.dart';
import 'package:test1/features/home/ui/wedgets/description_product.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String? brand;
  final double price;
  final double priceAfterDesc;
  final void Function()? onTap;

  const ProductCard({
    super.key,
    required this.name,
    this.brand,
    required this.price,
    required this.priceAfterDesc,
    required this.image, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity, // Expand to full width of grid
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorManager.white,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Card(
          color: ColorManager.white,
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
             //   flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(8.r),
                  ),
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                    height: 140.h,
                    width: double.infinity,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                child: DescriptionProduct(
                  name: name,
                  price: '\$$price',
                  priceAfterDesc: '\$${priceAfterDesc.toStringAsFixed(2)}',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

