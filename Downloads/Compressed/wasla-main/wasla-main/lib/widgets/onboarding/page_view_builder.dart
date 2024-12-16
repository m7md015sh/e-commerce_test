import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wasla/controllers/onboarding_controller.dart';
import 'package:wasla/core/constant/dimensions.dart';

import '../../data/data_source/static/static.dart';


class OnBoardingPageViewBuilder extends GetView<OnBoardingControllerImp> {
  const OnBoardingPageViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // OnBoardingControllerImp controller=Get.put(OnBoardingControllerImp());

    return PageView.builder(

      onPageChanged: (val){
        controller.onBoardingChange(val);
      },
        controller: controller.pageController,

        itemCount: onBoardingList.length,
        itemBuilder: (context, i) {
          return SingleChildScrollView(
            child: Column(
              children: [
                 SizedBox(
                  height: Dimensions.height30,
                ),
                Text(
                  onBoardingList[i].title!,
                  style:
                      const TextStyle(fontWeight: FontWeight.bold, fontSize: 20,fontFamily: 'Cairo',),
                ),
                 SizedBox(
                  height: Dimensions.height45,
                ),
                Image.asset(
                  onBoardingList[i].image!,
                  height: Dimensions.height300-50,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  onBoardingList[i].body!,
                  style: const TextStyle(
                      fontSize: 16, height: 2, color: Colors.grey,fontFamily: 'Cairo'),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        });
  }
}
