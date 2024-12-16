import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:wasla/core/class/status_request.dart';
import 'package:wasla/core/constant/routes_const.dart';
import 'package:wasla/core/functions/handling_data.dart';
import 'package:wasla/data/data_source/remote/auth/verifycode_signup.dart';
import 'package:wasla/data/data_source/remote/forgot_password/verifycode_reset_data.dart';



class VerifyCodeResetController extends GetxController{
  StatusRequest? statusRequest;

  //VerifyCodeSignupData verifyCodeSignupData=VerifyCodeSignupData(Get.find());
  late String verifyCode;
  String? email;
  VerifyCodeResetData verifyCodeResetData=VerifyCodeResetData(Get.find());


  @override
  void onInit() {

    email=  Get.arguments['email'];
    super.onInit();
  }

  @override
  checkCode() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  goToResetPassword(String verifyCode) async {
    statusRequest=StatusRequest.loading;
    update();

    var response = await verifyCodeResetData.postData(email!,verifyCode);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        // data.addAll(response['data']);
        Get.offNamed(RoutesConst.resetPassword,arguments: {'email':email});
      }else {
        Get.defaultDialog(title: "warning",middleText: "verify Code is not current");
        statusRequest = StatusRequest.failure;
        update();

      }
    }

    update();


  }

}