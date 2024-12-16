import 'package:wasla/core/class/crud.dart';
import 'package:wasla/core/constant/app_constants.dart';

class VerifyCodeSignUpData{
  Crud crud;
  VerifyCodeSignUpData(this.crud);

  postData(String email,String verifyCode,String token)async{
    var response=await crud.postData(AppConstants.VERIFYCODE_SIGNUP, {
      "email":email,
      "otp":verifyCode,
    },{
      'Accept': 'application/json',
      'Authorization': 'Bearer $token'});
    return response.fold((l) => l, (r) => r);
  }
}