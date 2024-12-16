import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/features/home/ui/wedgets/flash_sale/flash_sale_item.dart';

class FlashSaleListView extends StatelessWidget {
  const FlashSaleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 250.h, // Adjust height as needed

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              //  itemCount: items.length,
              itemBuilder: (context, index) {
                //   return FlashSaleItem(item: items[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
