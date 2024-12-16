import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wasla/core/constant/dimensions.dart';
import 'package:wasla/core/constant/routes_const.dart';
import 'package:wasla/core/localization/change_local.dart';
import 'package:wasla/widgets/language/custom_button_lang.dart';


class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Choose Language".tr,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: Dimensions.font23,fontFamily: 'Cairo'),
            ),
            SizedBox(
              height: Dimensions.height30,
            ),
            CustomButtonLang(
                textButton: "Arabic".tr,
                onPressed: () {
                  controller.changeLang("ar");
                  Get.offNamed(RoutesConst.onBoarding);
                }),
            SizedBox(
              height: Dimensions.height10,
            ),
            CustomButtonLang(
                textButton: "English".tr,
                onPressed: () {
                  controller.changeLang("en");
                  Get.offNamed(RoutesConst.onBoarding);
                }),
          ],
        ),
      ),
    );
  }
}
