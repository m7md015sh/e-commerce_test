import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:wasla/controllers/auth/vreify_code_register_controller.dart';
import 'package:wasla/core/class/status_request.dart';
import 'package:wasla/core/constant/colors.dart';
import 'package:wasla/core/constant/dimensions.dart';
import '../../core/constant/assets_image.dart';
import '../../widgets/auth/custom_body_text_auth.dart';
import '../../widgets/auth/custom_button_auth.dart';
import '../../widgets/auth/custom_title_text_auth.dart';
import '../../widgets/auth/logo_auth.dart';

class VerifyRegisterCode extends StatelessWidget {
  const VerifyRegisterCode({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // VerifyCodeControllerImp controller =
      Get.put(VerifyCodeRegisterControllerImp());
    //final controller = Get.find<VerifyCodeRegisterControllerImp>();
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: AppColors.grey),
          title: Text(
            "Verify Code".tr,
            style: TextStyle(
                color: AppColors.grey,
                fontWeight: FontWeight.bold,
                fontSize: Dimensions.font23),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: GetBuilder<VerifyCodeRegisterControllerImp>(
          builder: (controller) =>
              controller.statusRequest == StatusRequest.loading
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
                           CustomTitleTextAuth(text: "Check Email".tr),
                          SizedBox(
                            height: Dimensions.height20,
                          ),
                          CustomBodyTextAuth(
                            text:
                                "Sign In with Your Email and Password or continue with Social Media".tr,
                          ),
                          SizedBox(
                            height: Dimensions.height30,
                          ),
                          OtpTextField(
                            fieldWidth: Dimensions.width120,
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius15),
                            numberOfFields: 5,
                            borderColor: Color(0xFF512DA8),
                            //set to true to show as box or false to show as dash
                            showFieldAsBox: true,
                            //runs when a code is typed in
                            onCodeChanged: (String code) {
                              //handle validation or checks here
                              // controller.verifyCode=code;
                            },
                            //runs when every textfield is filled
                            onSubmit: (String verificationCode) {
                              controller.goToHomePage(verificationCode);
                              // showDialog(
                              //     context: context,
                              //     builder: (context){
                              //       return AlertDialog(
                              //         title: Text("Verification Code"),
                              //         content: Text('Code entered is $verificationCode'),
                              //       );
                              //     }
                              // );
                            }, // end onSubmit
                          ),
                          // CustomButtonAuth(
                          //   text: "Verification code check",
                          //   onPressed: ()
                          //   {
                          //    // controller.goToResetPassword();
                          //   },
                          // ),
                        ],
                      ),
                    ),
        ));
  }
}
