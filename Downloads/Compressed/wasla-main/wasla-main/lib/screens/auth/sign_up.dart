import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:wasla/controllers/auth/register_controller.dart';
import 'package:wasla/core/class/status_request.dart';
import 'package:wasla/core/constant/dimensions.dart';
import 'package:wasla/core/constant/routes_const.dart';

import '../../../core/constant/assets_image.dart';
import '../../../core/functions/alert_exit.dart';
import '../../../core/functions/valied_input.dart';
import '../../widgets/auth/custom_body_text_auth.dart';
import '../../widgets/auth/custom_button_auth.dart';
import '../../widgets/auth/custom_text_form_auth.dart';
import '../../widgets/auth/custom_text_login_or_signup.dart';
import '../../widgets/auth/custom_title_text_auth.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //   Get.lazyPut(()=>SignUpControllerImp());
    // final  controller  =Get.find<RegisterController>();
    Get.put(RegisterController());
    return Scaffold(
        body: GetBuilder<RegisterController>(
            builder: (controller) =>
                controller.statusRequest == StatusRequest.loading
                    ? Center(child: Lottie.asset(AppImageAsset.loadingLottie,width: 200,height: 200,))
                    : WillPopScope(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: Dimensions.height30,
                              horizontal: Dimensions.height25),
                          child: Form(
                            key: controller.registerFormKey,
                            child: ListView(
                              children: [
                                 CustomTitleTextAuth(text: "Sign Up".tr),
                                SizedBox(
                                  height: Dimensions.height35,
                                ),
                                 CustomBodyTextAuth(
                                  text:
                                      "Sign Up with Your Email and Password or continue with Social Media".tr,
                                ),
                                SizedBox(
                                  height: Dimensions.height60,
                                ),
                                CustomTextFormAuth(
                                  isNumber: false,
                                  valid: (val) {
                                    return validInput(val!, 5, 80, "name");
                                  },
                                  myController: controller.firstNameController,
                                  hintText: "Enter Your First Name".tr,
                                  labelText: "FirstName".tr,
                                  prefixIcon: Icons.person,
                                ),
                                CustomTextFormAuth(
                                  isNumber: false,
                                  valid: (val) {
                                    return validInput(val!, 5, 80, "name");
                                  },
                                  myController: controller.lastNameController,
                                  hintText: "Enter Your Last Name".tr,
                                  labelText: "LastName".tr,
                                  prefixIcon: Icons.person,
                                ),
                                CustomTextFormAuth(
                                  isNumber: false,
                                  valid: (val) {
                                    return validInput(val!, 12, 30, "email");
                                  },
                                  myController: controller.emailController,
                                  hintText: "Enter Your Email".tr,
                                  labelText: "Email".tr,
                                  prefixIcon: Icons.email_outlined,
                                ),
                                CustomTextFormAuth(
                                  isNumber: true,
                                  valid: (val) {
                                    return validInput(val!, 11, 11, "phone");
                                  },
                                  myController: controller.phoneController,
                                  hintText: "Your Phone Number".tr,
                                  labelText: "Phone".tr,
                                  prefixIcon: Icons.phone,
                                ),
                                CustomTextFormAuth(
                                  isNumber: false,
                                  valid: (val) {
                                    return validInput(val!, 8, 30, "password");
                                  },
                                  obscure: controller.isPasswordSecure,
                                  onTapSuffixIcon: () {
                                    controller.changeSecurePassword();
                                  },
                                  myController: controller.passwordController,
                                  hintText: "Enter Your Password".tr,
                                  labelText: "Password".tr,
                                  prefixIcon: Icons.lock_outline,
                                  suffixIcon:
                                      controller.isPasswordSecure == true
                                          ? Icons.remove_red_eye_outlined
                                          : Icons.remove_red_eye_rounded,
                                ),
                                GetBuilder<RegisterController>(
                                    builder: (controller) {
                                  return CustomButtonAuth(
                                    text: "Sign Up".tr,
                                    onPressed: () {
                                      controller.signUp();
                                    },
                                  );
                                }),
                                SizedBox(
                                  height: Dimensions.height20,
                                ),
                                CustomTextSignUpOrSignIn(
                                    text: "Your have an account?".tr,
                                    textBtn: "  Sign In".tr,
                                    onTap: () {
                                      Get.toNamed(RoutesConst.login);
                                    })
                              ],
                            ),
                          ),
                        ),
                        onWillPop: alertExitApp)));
  }
}
