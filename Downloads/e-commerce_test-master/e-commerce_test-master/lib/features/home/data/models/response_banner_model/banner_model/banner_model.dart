import 'datum.dart';

class BannerModel {
  bool? success;
  String? msg;
  List<Datum>? data;

  BannerModel({this.success, this.msg, this.data});

  factory BannerModel.fromJson(Map<String, dynamic> json) => BannerModel(
        success: json['success'] as bool?,
        msg: json['msg'] as String?,
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'success': success,
        'msg': msg,
        'data': data?.map((e) => e.toJson()).toList(),
      };
}
