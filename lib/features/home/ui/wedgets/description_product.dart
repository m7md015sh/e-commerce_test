import 'package:flutter/material.dart';

class Description_Product extends StatelessWidget {
  Description_Product({Key? key, this.name, this.prand, this.price, this.price_after_desc}) : super(key: key);
   final name;
   final prand;
   final price;
   final price_after_desc;
  @override
  Widget build(BuildContext context) {
    return Column(
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
         name!=null? name: 'Mountain Warehouse for ...',
    
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
              price!=null?price:'\$420.0',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 8.0),
            Text(
              price_after_desc!=null?price_after_desc:'\$410.0',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 11.0,
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
