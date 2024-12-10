import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceAndBuyNowSection extends StatelessWidget {
  const PriceAndBuyNowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0,right:16.0,top: 4.0,bottom: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
                height: 60.h,
                decoration: const BoxDecoration(
                  color: Color(0xff7b61ff),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16.0),
                      topLeft: Radius.circular(16.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8.0, left: 24.0, right: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(
                        '\$140.00',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w800),
                      ),
                      // const SizedBox(
                      //   height: 2,
                      // ),
                      Text(
                        'Unit price',
                        style: TextStyle(
                            color: Colors.grey.shade300, fontSize: 10),
                      ),
                    ],
                  ),
                )),
          ),
          GestureDetector(
            onTap: (){},
            child: Container(
                height: 60.h,
                decoration: const BoxDecoration(
                  color: Color(0xff6953d9),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(16.0),
                      topRight: Radius.circular(16.0)),
                ),
                child:  Padding(
                  padding: EdgeInsets.only(
                      top: 16.0, bottom: 16.0, left: 40.0, right: 40.0),
                  child: Center(
                      child: Text(
                    'Buy Now',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w800),
                  )),
                )),
          )
        ],
      ),
    );
  }
}
