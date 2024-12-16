import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:wasla/core/constant/app_constants.dart';
import 'package:wasla/core/functions/check_internet.dart';
import 'status_request.dart';

class Crud {
  Future<Either<StatusRequest, Map>> postData(String uri, Map data,Map<String,String> headers) async {

     try {
       if (await checkInternet()) {
         var response = await http.post(Uri.parse(uri), body: data,headers: headers);
         if (response.statusCode == 200 || response.statusCode == 201) {
           Map responseBody = jsonDecode(response.body);
           print(responseBody);
           return Right(responseBody);
         } else {
           return const Left(StatusRequest.serverFailure);
         }
       } else {
         return const Left(StatusRequest.offlineFailure);
       }
     }
       catch(_){
         return const Left(StatusRequest.serverException);
     }
     }

  Future<Either<StatusRequest, Map>> getData(String uri,Map<String,String> headers) async {

    try {
      if (await checkInternet()) {
        var response = await http.get(Uri.parse(uri),headers: headers);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          print(responseBody);
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    }
    catch(_){
      return const Left(StatusRequest.serverException);
    }
  }


}


