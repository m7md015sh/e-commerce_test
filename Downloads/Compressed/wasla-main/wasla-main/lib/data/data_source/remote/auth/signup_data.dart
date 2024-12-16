import 'package:wasla/core/class/crud.dart';
import 'package:wasla/core/constant/app_constants.dart';

class SignUpData{
  Crud crud;
  SignUpData(this.crud);

  postData(String first_name,String last_name,String password,String email,String phone,)async{
    var response=await crud.postData(AppConstants.SIGNUP, {
      "first_name":first_name,
      "last_name":last_name,
      "email":email,
      "phone":phone,
      "password":password,
    },{"Accept":"application/json"},);
    return response.fold((l) => l, (r) => r);
  }
}