import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:wasla/core/class/status_request.dart';
import 'package:wasla/core/constant/routes_const.dart';
import 'package:wasla/core/functions/handling_data.dart';
import 'package:wasla/data/data_source/remote/auth/verifycode_signup.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// Create storage

class VerifyCodeRegisterControllerImp extends GetxController{


  @override
  void onInit() {

    email=  Get.arguments['email'];
    token= Get.arguments['token'];
    print(token);
    super.onInit();
  }

  //StatusRequest? statusRequest;
  final storage = const FlutterSecureStorage();

  //VerifyCodeSignupData verifyCodeSignupData=VerifyCodeSignupData(Get.find());
  late String verifyCode;

  String? email;
  String token='';

  StatusRequest? statusRequest;
  VerifyCodeSignUpData verifyCodeSignUpData=VerifyCodeSignUpData(Get.find());




  @override
  checkCode() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  goToHomePage(String verifyCode) async {
    // statusRequest=StatusRequest.loading;
    update();
    print(token);
    print('bbbbbbbbbbbbbbbbb');

    var response = await verifyCodeSignUpData.postData(
        email!, verifyCode, token);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['success'] == true) {
        Get.offNamed(RoutesConst.home);
      }
      else if (response['message'] == "Unauthenticated") {
        // data.addAll(response['data']);
        print('Unauthenticated');
      } else {
        Get.defaultDialog(
            title: "warning", middleText: "verify Code is not current");
        statusRequest = StatusRequest.failure;
        update();
        print('eeeeeee');
      }


      update();
    }
  }

 }