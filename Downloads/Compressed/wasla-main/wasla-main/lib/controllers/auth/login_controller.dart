import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';
import 'package:wasla/core/class/status_request.dart';
import 'package:wasla/core/constant/routes_const.dart';
import 'package:wasla/core/functions/handling_data.dart';
import 'package:wasla/data/data_source/remote/auth/login_data.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';


class LoginController extends GetxController{
  final storage =  FlutterSecureStorage();

  StatusRequest?statusRequest;
  final loginFormKey=GlobalKey<FormState>();
  LoginData loginData=LoginData(Get.find());
  late TextEditingController emailController,passwordController;
  //String email='',password='';
  //final storage=const FlutterSecureStorage();
  //AuthController controller=Get.find();
  @override
  void onInit() {

    emailController=TextEditingController();
    passwordController=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  // Future registerController()async{
  //   AuthServices.login( email: emailController.text, password: passwordController.text);
  // }

  String? validateEmail(String value){

    if(!GetUtils.isEmail(value)){
      return "this is wrong email";
    }else{
      return null;
    }
  }
  String? validatePassword(String value){
    if(value.length<=5){
      return "this is wrong password";
    }else{
      return null;
    }
  }

  login() async {
    if(loginFormKey.currentState!.validate()){
      statusRequest=StatusRequest.loading;
      update();

      var response = await loginData.postData(emailController.text, passwordController.text);
      //statusRequest = handlingData(response);
      //if (StatusRequest.success == statusRequest) {
        if (response['success'] == true) {
          await storage.write(key: "token", value: response['token']);
          await storage.write(key: "name", value: response['name']);
          //loginFormKey.currentState!.save();

          // data.addAll(response['data']);
          Get.offNamed(RoutesConst.home);

        }else {
          Get.defaultDialog(title: "warning",middleText: "email or password is no correct");
         // statusRequest = StatusRequest.failure;
          update();

        }

    }
    update();
  }

  // doLogin() async {
  //
  //   bool isValidate= loginFormKey.currentState!.validate();
  //   if(isValidate){
  //     isLoading(true);
  //     try{
  //       isLoading(true);
  //       LoginModel data=await AuthServices.login( email: emailController.text, password: passwordController.text);
  //       if(data.success==true) {
  //         await storage.write(key: "name",value: data.data.userName);
  //         await storage.write(key: "token",value: data.data.userToken);
  //         //loginFormKey.currentState!.save();
  //         //loginFormKey.currentState!.save();
  //        Get.offNamed(RoutesConst.home);
  //        Get.snackbar('Login', '${data.message}');
  //       }else if(data.success==false){
  //         Get.snackbar('error', '${data.message}');
  //       }
  //
  //     }finally{
  //
  //       isLoading(false);
  //
  //
  //
  //     }
  //   }
  // }
  bool isPasswordSecure=true;
  void changeSecurePassword(){
    isPasswordSecure=isPasswordSecure==true?false:true;
    update();
  }
  goToSignUp() {
   Get.offAllNamed(RoutesConst.register);
  }

  goToForget() {
    Get.toNamed(RoutesConst.forgetPassword);

  }
}