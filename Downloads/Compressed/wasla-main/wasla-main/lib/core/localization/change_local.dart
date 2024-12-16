import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:wasla/core/constant/app_theme.dart';

import '../services/services.dart';

class LocaleController extends GetxController{

  Locale? language;

  MyServices myService=Get.find();

  ThemeData appTheme=themeArabic;

  changeLang(String langCode){
    Locale local=Locale(langCode);
    myService.sharedPreferences.setString("lang", langCode);
    appTheme=language=='ar'?themeArabic:themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(local);
  }
  @override
  void onInit() {
    String? sharedPrefLang=myService.sharedPreferences.getString("lang");
    if(sharedPrefLang=="ar"){
      language=const Locale("ar");
      appTheme=themeArabic;
    }else if(sharedPrefLang=="en"){
      appTheme=themeEnglish;
      language=const Locale("en");
    }else{
      appTheme=themeEnglish;
      language=Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }

}