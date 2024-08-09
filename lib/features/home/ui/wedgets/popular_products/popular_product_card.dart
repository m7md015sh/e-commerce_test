import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/core/colors.dart';
import 'package:test1/features/home/ui/wedgets/description_product.dart';

class PopularProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: ColorsManager.lighterGray,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(16.0)),
        width: 250,
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      'https://student.valuxapps.com/storage/uploads/products/1615442168bVx52.item_XXL_36581132_143760083.jpeg', // استبدل برابط الصورة
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        '20% off',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 8.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.0),
                  Text(
                    'LIPSY LONDON',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    'Mountain Warehouse for ...',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 2,
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Text(
                        '\$420.0',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        '\$410.0',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11.0,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
