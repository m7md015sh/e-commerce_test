import 'package:dio/dio.dart';

class ApiService{
final _baseUrl='https://student.valuxapps.com/api/';
final Dio dio;
ApiService(this.dio);

Future<Map<String,dynamic>> get({required String endPoint})async{
  var data=(await dio.get('$_baseUrl$endPoint')).data;
  return data;
}
}