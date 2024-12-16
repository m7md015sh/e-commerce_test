import 'package:card_swiper/card_swiper.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:wasla/core/class/status_request.dart';
import 'package:wasla/core/constant/dimensions.dart';
import 'package:wasla/core/functions/handling_data.dart';
import 'package:wasla/data/data_source/remote/test_data.dart';
import 'package:wasla/data/model/SlidersModel.dart';

import '../data/data_source/remote/slider_data.dart';

class SliderController extends GetxController {
  //SliderData sliderData=SliderData(Get.find());
  late StatusRequest statusRequest;
  var isLoading_sliders=true.obs;
  var allSliderList =[].obs;
  double current=0;

  Future getMySliders()async{
    var sliders= await GetMySlidersService.getAllSliders();

    try{
      isLoading_sliders.value=true;
      if(sliders.sliders.isNotEmpty){
        allSliderList.addAll(sliders.sliders);
      }
    }finally{
     // print('${allSliderList[0].image_url}==============================');

      isLoading_sliders.value=false;



    }
  }

  @override
  void onInit() {
    getMySliders();
    super.onInit();
  }




}