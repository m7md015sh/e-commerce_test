import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:wasla/core/constant/routes_const.dart';
import 'package:wasla/core/functions/handling_data.dart';
import 'package:wasla/data/data_source/remote/forgot_password/reset_password.dart';

import '../../core/class/status_request.dart';



class ResetPasswordController extends GetxController {
  //GlobalKey<FormState>formState = GlobalKey<FormState>();
  StatusRequest? statusRequest;
  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());
  List<dynamic> data = [];
  late TextEditingController password;
  //late TextEditingController rePassword;
  bool isPasswordSecure = true;

  void changeSecurePassword() {
    isPasswordSecure = isPasswordSecure == true ? false : true;
    update();
  }

  String? email;


  @override
  void onInit() {
    password = TextEditingController();
   // rePassword = TextEditingController();
    email = Get.arguments['email'];

    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    //rePassword.dispose();
    super.dispose();
  }

  checkNewPassword(String newPassword) async {
    statusRequest=StatusRequest.loading;
    update();

    var response = await resetPasswordData.postData(email!,newPassword);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        // data.addAll(response['data']);
        Get.offNamed(RoutesConst.home);
      }else {
        Get.defaultDialog(title: "warning",middleText: "please enter another password");
        statusRequest = StatusRequest.failure;
       // update();

      }
    }

    update();
  }

}



