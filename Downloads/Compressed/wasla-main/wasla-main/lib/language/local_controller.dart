import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../main.dart';



class MyLocalController extends GetxController{




  Locale intialLang = sharepref!.getString("lang") == null ? Get.deviceLocale! : Locale(sharepref!.getString("lang")!);
  //Locale intialLang = sharepref!.getString("lang") == "ar"? Locale("ar"):Locale("en");
  void changeLang(String codelang){
    Locale locale = Locale(codelang);
    sharepref!.setString("lang", codelang);
    Get.updateLocale(locale);
  }
//ar
//en

}