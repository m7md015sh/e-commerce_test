
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/core/colors.dart';
import '../../../home_cubit/product_cubit/product_cubit.dart';
import '../../../home_cubit/product_cubit/product_state.dart';

class ProductCard extends StatelessWidget {
   int index;
   ProductCard({required this.index});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit,ProductState>(
      builder: (context,state)
    {
      if (state is ProductStateSuccess) {
         return Container(
           decoration: BoxDecoration(border: Border.all(color: ColorsManager.lighterGray,width: 1,),borderRadius: BorderRadius.circular(16.0)),

           child: Card(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(8.0)),
                  child: Image.network(
                    '${state.books.data.products[index].image}',
                    fit: BoxFit.fitHeight,
                    height: 140,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${state.books.data.products[index].price}',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    '${state.books.data.products[index].name}',
                    style: const TextStyle(fontSize: 14),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[700],
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '5',
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
                   ),
         );
      } else if (state is ProductStateLoading) {
        return CircularProgressIndicator();
      } else {
        return Center(
          child: Text('error'),
        );
      }
    });

  }
}