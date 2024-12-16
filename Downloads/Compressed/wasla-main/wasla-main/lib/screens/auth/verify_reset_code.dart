import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:wasla/controllers/forgot_password/vreify_code_reset_controller.dart';
import 'package:wasla/core/constant/colors.dart';
import 'package:wasla/core/constant/dimensions.dart';

import '../../widgets/auth/custom_body_text_auth.dart';
import '../../widgets/auth/custom_button_auth.dart';
import '../../widgets/auth/custom_title_text_auth.dart';
import '../../widgets/auth/logo_auth.dart';

class VerifyResetCode extends StatelessWidget {
  const VerifyResetCode({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // VerifyCodeControllerImp controller =
    //  Get.put(VerifyCodeControllerImp());
    final controller =Get.find<VerifyCodeResetController>();
    return  Scaffold(
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
      body: GetBuilder<VerifyCodeResetController>(builder: (controller)=>Container(
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
              "Sign In with Your Email and Password or continue with Social Media".tr,
            ),
            SizedBox(
              height: Dimensions.height30,
            ),
            OtpTextField(
              fieldWidth: Dimensions.width120,
              borderRadius: BorderRadius.circular(Dimensions.radius15),
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
              onSubmit: (String verificationCode){
                controller.goToResetPassword(verificationCode);
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
            CustomButtonAuth(
              text: "Verification code check".tr,
              onPressed: ()
              {
                // controller.goToResetPassword();
              },
            ),
          ],
        ),
      ),),
    );
  }
}
