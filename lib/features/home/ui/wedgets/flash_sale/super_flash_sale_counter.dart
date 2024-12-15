import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:test1/core/resources/assets_manager.dart';
import 'package:test1/core/resources/color_manager.dart';
import 'package:test1/core/resources/strings_manager.dart';
import 'package:test1/core/resources/styles_manager.dart';

class FlashSaleWidget extends StatelessWidget {
  const FlashSaleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Set the end time for the countdown timer
    int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30 * 60; // 30 minutes from now

    return SizedBox(
      width: double.infinity,
      height: 200.w,
      child: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              ImageAssets.flashSaleCounter, // Replace with your image URL
              fit: BoxFit.cover,
            ),
          ),
          // Overlay
          Positioned.fill(
            child: Container(
              color: ColorManager.blackWithObesityDarker
            ),
          ),
          // Sale text and countdown timer
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.superFlashSale,
                  style: TextStyle(
                    color: ColorManager.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '50% Off',
                  style: getBoldStyle(color: ColorManager.white,fontSize: 20.sp)
                ),
                SizedBox(height: 10.h),
                CountdownTimer(
                  endTime: endTime,
                  widgetBuilder: (_, time) {
                    if (time == null) {
                      return Text(
                        '00 : 00 : 00',
                        style:  getBoldStyle(color: ColorManager.white,fontSize: 20.sp),
                      );
                    }
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildTimeBox(time.hours ?? 0),
                        Text(
                          ' : ',
                          style:  getBoldStyle(color: ColorManager.white,fontSize: 20.sp),
                        ),
                        _buildTimeBox(time.min ?? 0),
                        Text(
                          ' : ',
                          style:  getBoldStyle(color: ColorManager.white,fontSize: 20.sp),
                        ),
                        _buildTimeBox(time.sec ?? 0),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeBox(int time) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: ColorManager.blackWithObesityDarker,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Text(
        time.toString().padLeft(2, '0'),
        style: getBoldStyle(color: ColorManager.white,fontSize: 20.sp),
      ),
    );
  }
}