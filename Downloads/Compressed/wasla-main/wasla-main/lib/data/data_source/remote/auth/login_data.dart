import 'package:wasla/core/class/crud.dart';
import 'package:wasla/core/constant/app_constants.dart';

class LoginData{
  Crud crud;
  LoginData(this.crud);

  postData(String email,String password)async{
    var response=await crud.postData(AppConstants.LOGIN, {
      "email":email,
      "password":password,
    },{"Accept":"application/json"});
    return response.fold((l) => l, (r) => r);
  }
}