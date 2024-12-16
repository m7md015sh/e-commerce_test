import 'package:wasla/core/class/crud.dart';
import 'package:wasla/core/constant/app_constants.dart';

class TestData{
  Crud crud;
  TestData(this.crud);

  getData()async{
    var response=await crud.postData(AppConstants.test, {

    },{"Accept":"application/json"});
   return response.fold((l) => l, (r) => r);
  }
}