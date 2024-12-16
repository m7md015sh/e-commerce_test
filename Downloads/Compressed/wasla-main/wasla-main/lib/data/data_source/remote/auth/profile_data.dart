// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:wasla/core/class/crud.dart';
// import 'package:wasla/core/constant/app_constants.dart';
//
// class ProfileData{

//
//   Crud crud;
//   ProfileData(this.crud);
//
//   getData()async{
//
//   String  token=(await storage.read(key: "token"))!;
//
//     var response=await crud.getData(AppConstants.GET_PROFILE_DATA,{
//       'Accept': 'application/json',
//       'Authorization': 'Bearer ${token}'},);
//     return response.fold((l) => l, (r) => r);
//   }
// }
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wasla/core/constant/app_constants.dart';
import 'package:wasla/data/model/SlidersModel.dart';
import 'package:http/http.dart'as http;
import 'package:wasla/data/model/profile_model.dart';
class GetMyProfileDataService {
    static Future<ProfileModel> getProfileData(String token) async {
      final storage =  FlutterSecureStorage();
      AppConstants.TOKEN=(await storage.read(key: "token"))!;

    var response = await http.get(

        Uri.parse('${AppConstants.GET_PROFILE_DATA}'),headers: {

      "Accept":"application/json",
      "Authorization":"Bearer $token"
    });
    if (response.statusCode == 200) {
      var jsonData = response.body;

      return profileModelFromJson(jsonData);
    } else {
      return throw Exception("Failed to load product");
    }
  }
}