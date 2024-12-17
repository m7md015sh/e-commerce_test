import 'data.dart';

class ProductsModelResponse {
  bool? success;
  String? msg;
  Data? data;

  ProductsModelResponse({this.success, this.msg, this.data});

  factory ProductsModelResponse.fromJson(Map<String, dynamic> json) {
    return ProductsModelResponse(
      success: json['success'] as bool?,
      msg: json['msg'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'success': success,
        'msg': msg,
        'data': data?.toJson(),
      };
}
