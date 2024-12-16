import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:wasla/controllers/forgot_password/check_email_controller.dart';
import 'package:wasla/core/class/status_request.dart';
import 'package:wasla/core/constant/assets_image.dart';
import 'package:wasla/core/constant/colors.dart';
import 'package:wasla/core/constant/dimensions.dart';
import 'package:wasla/core/functions/valied_input.dart';
import 'package:wasla/widgets/auth/custom_button_auth.dart';
import 'package:wasla/widgets/auth/custom_text_form_auth.dart';

import '../../widgets/auth/custom_body_text_auth.dart';
import '../../widgets/auth/custom_title_text_auth.dart';
import '../../widgets/auth/logo_auth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final controller=Get.find<CheckEmailController>();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.grey),
        title: Text(
          "Forget Password".tr,
          style: TextStyle(
              color: AppColors.grey,
              fontWeight: FontWeight.bold,
              fontSize: Dimensions.font23),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body:GetBuilder<CheckEmailController>(
    builder: (controller) =>
    controller.statusRequest == StatusRequest.loading? Center(child: Lottie.asset(AppImageAsset.loadingLottie,width: 200,height: 200,)): Container(
        padding: EdgeInsets.symmetric(
            vertical: Dimensions.width10, horizontal: Dimensions.height25),
        child: ListView(
          children: [
            const LogoAuth(),
            SizedBox(
              height: Dimensions.height20,
            ),
             CustomTitleTextAuth(text: "Check Email".tr),
            SizedBox(
              height: Dimensions.height20,
            ),
             CustomBodyTextAuth(
              text:
                  "Please Enter your Email Address To Receive A Verification Code".tr,
            ),
            SizedBox(
              height: Dimensions.height30,
            ),
            Form(
              key: controller.checkEmailFormKey,

              child: CustomTextFormAuth(
                isNumber: false,

                valid: (val){
                  return validInput(val!, 12 , 60, "email");
                },
                myController: controller.emailController,
                hintText: "Enter Your Email".tr,
                labelText: "Email".tr,
                prefixIcon: Icons.email_outlined,
              ),
            ),
            CustomButtonAuth(
              text: "Check".tr,
              onPressed: () {
                controller.checkEmailResetPassword();
              },
            ),
          ],
        ),
      ),
    ));
  }
}
