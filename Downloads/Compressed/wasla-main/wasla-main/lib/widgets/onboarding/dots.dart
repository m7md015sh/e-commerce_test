import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wasla/controllers/onboarding_controller.dart';
import 'package:wasla/core/constant/colors.dart';

import '../../data/data_source/static/static.dart';

class OnBoardingDots extends GetView<OnBoardingControllerImp> {
  const OnBoardingDots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (controller){
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
              onBoardingList.length,
                  (index) => AnimatedContainer(
                margin: const EdgeInsets.symmetric(horizontal: 3),
                duration: const Duration(
                  milliseconds: 400,
                ),
                width: controller.currentIndex==index?20:6,
                height: 6,
                decoration: BoxDecoration(
                    color: AppColors.mainDarkColor,
                    borderRadius: BorderRadius.circular(10)),
              ))
        ],
      );
    });
  }
}
