import 'package:wasla/core/class/crud.dart';
import 'package:wasla/core/constant/app_constants.dart';

class CheckEmailData{
  Crud crud;
  CheckEmailData(this.crud);

  postData(String email)async{
    var response=await crud.postData(AppConstants.CHECK_EMAIL, {
      "email":email,
    },{"Accept":"application/json"});
    return response.fold((l) => l, (r) => r);
  }
}