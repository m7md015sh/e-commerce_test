import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/core/resources/color_manager.dart';
import 'package:test1/core/resources/styles_manager.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Still under development',
      style: getBoldStyle(color: ColorManager.black,fontSize: 20.sp),
      ),
    );
  }
}
