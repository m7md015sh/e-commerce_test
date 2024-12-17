import 'datum.dart';

class CategoriesResponseModel {
  bool? success;
  String? msg;
  List<Datum>? data;

  CategoriesResponseModel({this.success, this.msg, this.data});

  factory CategoriesResponseModel.fromJson(Map<String, dynamic> json) {
    return CategoriesResponseModel(
      success: json['success'] as bool?,
      msg: json['msg'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'success': success,
        'msg': msg,
        'data': data?.map((e) => e.toJson()).toList(),
      };
}
