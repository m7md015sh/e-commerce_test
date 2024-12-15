import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/core/static/test_items.dart';
import 'package:test1/features/home/ui/wedgets/flash_sale/flash_sale_item.dart';

class FlashSaleListView extends StatelessWidget {
  const FlashSaleListView({super.key, this.onTap});
   final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: SizedBox(
        height: 250.h,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: constraints.maxWidth * 0.4,
                  ),
                  child: FlashSaleItem(item: items[index],onTap: onTap,),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
