import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextAndIcon extends StatelessWidget {
  const TextAndIcon({super.key,required this.text,required this.iconAsset});
  final String text;
  final String iconAsset;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 16.w,top: 16.h,bottom: 16.h),
      child: Row(
        children: [
          SvgPicture.asset(iconAsset,
          width: 20,
            height: 18,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(text,style: TextStyle(
              color: Color(0xff222222),fontSize: 14.sp
            ),),
          ),

        ],
      ),
    );
  }
}
