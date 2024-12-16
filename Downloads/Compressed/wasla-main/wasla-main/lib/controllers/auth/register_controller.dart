import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';
import 'package:wasla/core/class/status_request.dart';
import 'package:wasla/core/constant/routes_const.dart';
import 'package:wasla/core/functions/handling_data.dart';
import 'package:wasla/data/data_source/remote/auth/signup_data.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class RegisterController extends GetxController {
  final storage =  FlutterSecureStorage();

  //var isLoading = false.obs;
   StatusRequest? statusRequest;
  SignUpData signUpData = SignUpData(Get.find());
  List<dynamic> data = [];
  GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

  late TextEditingController firstNameController,lastNameController,
      emailController,
      phoneController,
      passwordController;
 // String name = '', email = '', phone = '', password = '';
  //final storage=const FlutterSecureStorage();

  bool isPasswordSecure = true;
  void changeSecurePassword() {
    isPasswordSecure = isPasswordSecure == true ? false : true;
    update();
  }

  @override
  void onInit() {
    signUp();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  signUp() async {
    if(registerFormKey.currentState!.validate()){
      statusRequest=StatusRequest.loading;
      update();

    var response = await signUpData.postData(firstNameController.text,lastNameController.text,
        passwordController.text, emailController.text, phoneController.text);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['success'] == true) {
        await storage.write(key: "token", value: response['token']);

        // data.addAll(response['data']);
        Get.offNamed(RoutesConst.verifyRegisterCode,arguments: {"email":emailController.text,"token":response["token"]});
      }else {
        Get.defaultDialog(title: "warning",middleText: "phone number or email is already exist");
        statusRequest = StatusRequest.failure;
        update();

      }
      }
    }
    update();
  }
  // Future registerController()async{
  //  AuthServices.register(name: nameController.text, email: emailController.text,phone: phoneController.text, password: passwordController.text);
  //  }
  //  String? validateName(String name){
  //   if(!name.isNotEmpty){
  //     return "this is wrong Name";
  //   }else{
  //     return null;
  //   }
  //
  //  }
  //
  //  String? validateEmail(String value){
  //
  //   if(!GetUtils.isEmail(value)){
  //     return "this is wrong email";
  //   }else{
  //     return null;
  //   }
  //  }
  // String? validatePassword(String value){
  //   if(value.length<=5){
  //     return "this is wrong password";
  //   }else{
  //     return null;
  //   }
  // }
  // doRegister() async {
  //
  //  bool isValidate= registerFormKey.currentState!.validate();
  //  if(isValidate){
  //    isLoading(true);
  //    try{
  //     SignupModel data=await AuthServices.register(name: nameController.text, email: emailController.text, phone: phoneController.text,password: passwordController.text);
  //       if(data.success==true) {
  //         //  await storage.write(key: "name",value: data.user.name);
  //         //  await storage.write(key: "token",value: data.token);
  //         // registerFormKey.currentState!.save();
  //         Get.offAllNamed(RoutesConst.verifyRegisterCode, arguments: {
  //           "email": emailController.text,
  //         });
  //       }else {
  //         Get.snackbar('Register', '${data.message}');
  //
  //       }
  //
  //
  //    }finally{
  //
  //      isLoading(false);
  //
  //
  //
  //    }
  //  }
  // }
}
