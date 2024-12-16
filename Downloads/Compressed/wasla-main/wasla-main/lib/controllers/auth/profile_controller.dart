// import 'package:flutter/cupertino.dart';
//
// import 'package:get/get.dart';
// import 'package:wasla/controllers/auth/auth_controller.dart';
// import 'package:wasla/core/class/status_request.dart';
// import 'package:wasla/core/constant/routes_const.dart';
// import 'package:wasla/core/functions/handling_data.dart';
// import 'package:wasla/data/data_source/remote/auth/login_data.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:wasla/data/data_source/remote/auth/profile_data.dart';
//
//
// class ProfileController extends GetxController{
//   final storage =  FlutterSecureStorage();
//
//   String? f_name;
//   String? token;
//   StatusRequest?statusRequest;
//   final loginFormKey=GlobalKey<FormState>();
//   ProfileData profileData=ProfileData(Get.find());
//    final controller=Get.put(AuthController());
//   @override
//   void onInit() {
//     token=controller.token.value;
//     profile();
//     super.onInit();
//   }
//   @override
//   void dispose() {
//     super.dispose();
//   }
//
//
//
//
//
//   profile() async {
//       statusRequest=StatusRequest.loading;
//       update();
//
//       var response = await profileData.getData();
//       statusRequest = handlingData(response);
//       print("nooooooooooooooooooooooo");
//       print("${controller.token}");
//
//       if (StatusRequest.success == statusRequest) {
//       if (response['status'] == 'active') {
//         await storage.write(key: "token", value:token);
//
//         print("suuuuuuucessssssssssssssss");
//          f_name=response['first_name'];
//
//       }else {
//         Get.defaultDialog(title: "warning",middleText: "email or password is no correct");
//          statusRequest = StatusRequest.failure;
//         print("suuuuuuucessssssssssssssss");
//
//         update();
//
//       }
//
//     update();
//   }
//
//
//   }
// }
import 'package:card_swiper/card_swiper.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:wasla/controllers/auth/auth_controller.dart';
import 'package:wasla/core/class/status_request.dart';
import 'package:wasla/core/constant/dimensions.dart';
import 'package:wasla/core/functions/handling_data.dart';
import 'package:wasla/data/data_source/remote/auth/profile_data.dart';
import 'package:wasla/data/data_source/remote/test_data.dart';
import 'package:wasla/data/model/profile_model.dart';

import '../../core/constant/app_constants.dart';


class ProfileController extends GetxController {
  var langStorage=const FlutterSecureStorage();
  var localLang=AppConstants.ara;
  //ProfileData sliderData=ProfileData(Get.find());
  AuthController authController=Get.find();
  late StatusRequest statusRequest;
  var isLoading_profile=true.obs;
  var profileModel;

  var isProfilePicPassSheet=false.obs;
  var profilePicPath="".obs;
  Future getMyProfiles()async{
    String token=authController.token;

    var profile= await GetMyProfileDataService.getProfileData(token);

    try{
      isLoading_profile.value=true;



    }finally{
      profileModel=profile;
      // print('${allProfileList[0].image_url}==============================');
      isLoading_profile.value=false;

      return profile;



    }
  }

  @override
  void onInit() {
    getMyProfiles();
    super.onInit();
  }


void setProfileImagePath(String path){
  profilePicPath.value=path;
  isProfilePicPassSheet.value=true;
}

  Future<String?> get getLanguage async{
    return await langStorage.read(key: "lang");
  }
  void changeLanguage(String type){
    //  saveLanguage(type);
    // Get.updateLocale(Locale(type));
    // update();
    if(localLang==type){
      return null;
    }
    if(type==AppConstants.en){
      localLang=AppConstants.en;
      // saveLanguage(AppConstants.en);
    }else{
      localLang=AppConstants.ara;
      //saveLanguage(AppConstants.ara);

    }
    update();
  }

}