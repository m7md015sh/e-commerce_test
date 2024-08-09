import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/core/colors.dart';
import 'package:test1/features/home/ui/wedgets/description_product.dart';

class ProductCard extends StatelessWidget {

  final image;
  final name;
  final prand;
  final price;
  final price_after_desc;
  ProductCard(
      {
      this.name,
      this.prand,
      this.price,
      this.price_after_desc,
      this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.2,
      height: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
          border: Border.all(
            color: ColorsManager.lighterGray,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(16.0)),
      child: Card(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:
              const BorderRadius.vertical(top: Radius.circular(8.0)),
              child: Image.network(
                image,
                fit: BoxFit.fitHeight,
                height: 140,
                width: double.infinity,
              ),
            ),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Description_Product(
                    name: '$name',
                    price: '$price',
                    price_after_desc:'$price_after_desc'
                )),
          ],
        ),
      ),
    );
  }
}
