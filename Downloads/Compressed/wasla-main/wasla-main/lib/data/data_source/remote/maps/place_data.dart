import 'package:dio/dio.dart';
import 'package:wasla/core/class/crud.dart';
import 'package:wasla/core/constant/app_constants.dart';

class PlaceData{
  late Dio dio;

  PlaceData(){
    BaseOptions options=BaseOptions(
      connectTimeout: const Duration(seconds: 2),
      receiveTimeout: const Duration(seconds: 2),
      receiveDataWhenStatusError: true,

    );
    dio=Dio(options);
  }
  Future<List<dynamic>>fetchSuggestions(String place,String sessionToken)async{
    try{
      Response response=await dio.get(AppConstants.BASE_URL_PLACE,queryParameters: {
           'input': place,
           'sessiontoken': sessionToken,
           'types':'address',
           'components':'country:eg',
           'key':'${AppConstants.GOOGLE_API_KEY}'},);
      return response.data['predictions'];
    }catch(e){
      print(e.toString());
      return [];
    }
  }
  // final queryParameters = {
  //   'input': input,
  //   'sessiontoken': sessionToken,
  //   'types':'address',
  //   'components':'country:eg',
  //   'key':'${AppConstants.GOOGLE_API_KEY}',
  // };

}