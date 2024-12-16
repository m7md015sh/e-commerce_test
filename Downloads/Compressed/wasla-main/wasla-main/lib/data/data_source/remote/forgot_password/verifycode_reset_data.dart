import 'package:wasla/core/class/crud.dart';
import 'package:wasla/core/constant/app_constants.dart';

class VerifyCodeResetData{
  Crud crud;
  VerifyCodeResetData(this.crud);

  postData(String email,String verifyCode,)async{
    var response=await crud.postData(AppConstants.VERIFYCODE_RESET, {
      "email":email,
      "verfiycode":verifyCode,
    },{"Accept":"application/json"});
    return response.fold((l) => l, (r) => r);
  }
}