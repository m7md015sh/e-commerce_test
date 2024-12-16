import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';
import 'package:wasla/core/class/status_request.dart';
import 'package:wasla/core/constant/routes_const.dart';
import 'package:wasla/core/functions/handling_data.dart';
import 'package:wasla/data/data_source/remote/auth/signup_data.dart';
import 'package:wasla/data/data_source/remote/forgot_password/check_email.dart';

class CheckEmailController extends GetxController {
  StatusRequest? statusRequest;
  CheckEmailData checkEmailData = CheckEmailData(Get.find());
  List<dynamic> data = [];
  GlobalKey<FormState> checkEmailFormKey = GlobalKey<FormState>();

  late TextEditingController emailController;



  @override
  void onInit() {
    //checkEmailResetPassword();
    emailController = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  checkEmailResetPassword() async {
    if(checkEmailFormKey.currentState!.validate()){
      statusRequest=StatusRequest.loading;
      update();

      var response = await checkEmailData.postData(emailController.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(RoutesConst.verifyResetCode,arguments: {"email":emailController.text});
        }else if(response['status'] == "failure"){
          Get.defaultDialog(title: "warning",middleText: "email is not exist");
          statusRequest = StatusRequest.failure;
          //update();

        }
      }
    }
    update();
  }

}
