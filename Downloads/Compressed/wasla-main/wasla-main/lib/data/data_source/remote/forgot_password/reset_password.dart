import 'package:wasla/core/class/crud.dart';
import 'package:wasla/core/constant/app_constants.dart';

class ResetPasswordData{
  Crud crud;
  ResetPasswordData(this.crud);

  postData(String email,String newPassword,)async{
    var response=await crud.postData(AppConstants.RESET_PASSWORD, {
      "email":email,
      "password":newPassword,
    },{"Accept":"application/json"});
    return response.fold((l) => l, (r) => r);
  }
}