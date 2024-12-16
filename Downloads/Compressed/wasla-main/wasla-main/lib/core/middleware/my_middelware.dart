import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wasla/core/constant/routes_const.dart';
import 'package:wasla/core/services/services.dart';

class MyMiddleWare extends GetMiddleware{
  MyServices myService=Get.find();
  int? get priority=>1;
  @override
  RouteSettings? redirect(String? route) {
    if(myService.sharedPreferences.getString("onBoarding") == "1"){
      return const RouteSettings(name: RoutesConst.login);
    }
  }
}