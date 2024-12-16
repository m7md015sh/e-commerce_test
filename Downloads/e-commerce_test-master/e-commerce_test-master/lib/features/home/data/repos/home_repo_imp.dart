import 'package:test1/core/core/constants/constatnts.dart';
import 'package:test1/core/core/services/dio_provider.dart';
import 'package:test1/features/home/data/models/response_banner_model/banner_model/banner_model.dart';

class HomeRepo {
    static Future<BannerModel?> bannerHome() async {
    var url = AppConstants.baseUrl+AppConstants.bannerHome;
    var response = await DioProvider.get(endPoint: url);
    var bannerModel = BannerModel.fromJson(response.data);

    if (response.statusCode == 200) {
      return bannerModel;
    } else {
      return null;
    }
  }
}
