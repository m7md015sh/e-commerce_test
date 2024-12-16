import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../core/constant/routes_const.dart';
import '../data/data_source/static/static.dart';


abstract class OnBoardingController extends GetxController{
  toNext();
  onBoardingChange(int index);
}

class OnBoardingControllerImp extends OnBoardingController{
  late PageController pageController;
  int currentIndex=0;
  @override
  onBoardingChange(int index) {
    currentIndex=index;
    update();
  }

  @override
  toNext() {
    currentIndex++;
    if(currentIndex>onBoardingList.length-1){
      Get.offAllNamed(RoutesConst.login);
    }else {
      pageController.animateToPage(currentIndex,
          duration:const Duration(microseconds: 1500), curve: Curves.easeInOut);
    }
  }
  @override
  void onInit() {
    pageController=PageController();
    super.onInit();
  }

}