import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wasla/controllers/onboarding_controller.dart';
import 'package:wasla/core/constant/colors.dart';

import '../../core/constant/routes_const.dart';
import '../../data/data_source/static/static.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  CustomButtonOnBoarding({Key? key}) : super(key: key);
  //MyService myService=Get.find();

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 2),
      child:  Text(
        'Continue'.tr,
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'Cairo',fontSize: 17),
      ),
      color: AppColors.mainDarkColor,
      onPressed: () {
        if (controller.currentIndex == onBoardingList.length - 1) {
          //  myService.sharedPreferences.setString("onBoarding", "1");
          Get.offAllNamed(RoutesConst.login);
        } else {
          controller.toNext();
        }
      },
    );
  }
}
