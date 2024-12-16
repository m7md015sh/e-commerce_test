import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:wasla/controllers/auth/auth_controller.dart';
import 'package:wasla/core/constant/colors.dart';
import 'package:wasla/core/constant/routes_const.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  AuthController controller=Get.find();
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),(){
      if(controller.isAuth()){
        Get.offAllNamed(RoutesConst.home);

      }else {
        Get.offAllNamed(RoutesConst.login,);
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('PAYTAC'.tr,style: TextStyle(fontSize: 40,color: AppColors.mainColor,fontWeight:FontWeight.bold),),
      ),
    );
  }
}
