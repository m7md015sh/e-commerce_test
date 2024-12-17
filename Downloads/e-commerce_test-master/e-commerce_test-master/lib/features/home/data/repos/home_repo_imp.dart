import 'package:test1/core/constants/constatnts.dart';
import 'package:test1/core/services/dio_provider.dart';
import 'package:test1/features/home/data/models/response_all_categories/categories_response_model/categories_response_model.dart';
import 'package:test1/features/home/data/models/response_allproducts_model/products_model_response/products_model_response.dart';
import 'package:test1/features/home/data/models/response_banner_model/banner_model/banner_model.dart';

class HomeRepo {
  static Future<BannerModel?> bannerHome() async {
    var url = AppConstants.baseUrl + AppConstants.bannerHome;
    var response = await DioProvider.get(endPoint: url);
    var bannerModel = BannerModel.fromJson(response.data);

    if (response.statusCode == 200) {
      return bannerModel;
    } else {
      return null;
    }
  }
  static Future<CategoriesResponseModel?> allCategories() async {
    var url = AppConstants.baseUrl + AppConstants.allCategories;
    var response = await DioProvider.get(endPoint: url);
    var allCategories = CategoriesResponseModel.fromJson(response.data);

    if (response.statusCode == 200) {
      return allCategories;
    } else {
      return null;
    }
  }

  static Future<ProductsModelResponse?> allProducts() async {
    var url = AppConstants.baseUrl + AppConstants.allProducts;
    var response = await DioProvider.get(endPoint: url);
    var productsModel = ProductsModelResponse.fromJson(response.data);

    if (response.statusCode == 200) {
      return productsModel;
    } else {
      return null;
    }
  }
}
