import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class FlashSaleWidget extends StatelessWidget {
  const FlashSaleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Set the end time for the countdown timer
    int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30 * 60; // 30 minutes from now

    return Container(
      width: double.infinity,
      height: 200.h, // Adjust the height as needed
      child: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.network(
              'https://i.imgur.com/pRgcbpS.png', // Replace with your image URL
              fit: BoxFit.cover,
            ),
          ),
          // Overlay
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
          // Sale text and countdown timer
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Super Flash Sale',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '50% Off',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.h),
                CountdownTimer(
                  endTime: endTime,
                  widgetBuilder: (_, time) {
                    if (time == null) {
                      return Text(
                        '00 : 00 : 00',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    }
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildTimeBox(time.hours ?? 0),
                        Text(
                          ' : ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        _buildTimeBox(time.min ?? 0),
                        Text(
                          ' : ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
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
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Text(
        time.toString().padLeft(2, '0'),
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
