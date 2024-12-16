import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:wasla/controllers/forgot_password/reset_password_controller.dart';
import 'package:wasla/core/class/status_request.dart';
import 'package:wasla/core/constant/colors.dart';
import 'package:wasla/core/constant/dimensions.dart';
import 'package:wasla/core/functions/valied_input.dart';
import 'package:wasla/widgets/auth/custom_text_form_auth.dart';
import '../../core/constant/assets_image.dart';
import '../../widgets/auth/custom_body_text_auth.dart';
import '../../widgets/auth/custom_button_auth.dart';
import '../../widgets/auth/custom_title_text_auth.dart';
import '../../widgets/auth/logo_auth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.grey),
        title: Text(
          "Reset Password".tr,
          style: TextStyle(
              color: AppColors.grey,
              fontWeight: FontWeight.bold,
              fontSize: Dimensions.font23),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: GetBuilder<ResetPasswordController>(
        builder: (controller) => controller.statusRequest ==
                StatusRequest.loading
            ? Center(
                child: Lottie.asset(
                AppImageAsset.loadingLottie,
                width: 200,
                height: 200,
              ))
            : Container(
                padding: EdgeInsets.symmetric(
                    vertical: Dimensions.width10,
                    horizontal: Dimensions.height25),
                child: ListView(
                  children: [
                    const LogoAuth(),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    CustomTitleTextAuth(text: "New Password".tr),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    CustomBodyTextAuth(
                      text: "Enter New Password".tr,
                    ),
                    SizedBox(
                      height: Dimensions.height30,
                    ),
                    Form(
                      // key: controller.formState,
                      child: CustomTextFormAuth(
                        isNumber: false,
                        valid: (val) {
                          //return validInput(val!, 8 , 30, "password");
                        },
                        obscure: controller.isPasswordSecure,
                        onTapSuffixIcon: () {
                          controller.changeSecurePassword();
                        },
                        myController: controller.password,
                        hintText: "Enter New Your Password".tr,
                        labelText: "Password".tr,
                        prefixIcon: Icons.lock_outline,
                        suffixIcon: controller.isPasswordSecure == true
                            ? Icons.remove_red_eye_outlined
                            : Icons.remove_red_eye_rounded,
                      ),
                    ),

                    // CustomTextFormAuth(
                    //   isNumber: false,
                    //   obscure: controller.isPasswordSecure,
                    //   onTapSuffixIcon: (){
                    //     controller.changeSecurePassword();
                    //   },
                    //   valid: (val){
                    //     return validInput(val!, 8 , 30, "password");
                    //   },
                    //   myController: controller.rePassword,
                    //   hintText: "Re Enter Your Password",
                    //   labelText: "Password",
                    //   prefixIcon: Icons.lock_outline,
                    //   suffixIcon: Icons.remove_red_eye_outlined,
                    // ),

                    CustomButtonAuth(
                      text: "Reset Password".tr,
                      onPressed: () {
                        print('dddd');
                        controller.checkNewPassword(controller.password.text);
                      },
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
