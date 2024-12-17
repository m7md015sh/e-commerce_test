import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/features/home/data/models/response_all_categories/categories_response_model/categories_response_model.dart';
import 'package:test1/features/home/data/models/response_allproducts_model/products_model_response/products_model_response.dart';
import 'package:test1/features/home/data/models/response_banner_model/banner_model/banner_model.dart';
import 'package:test1/features/home/data/repos/home_repo_imp.dart';
import 'package:test1/features/home/home_cubit/home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(IntialHomeStates());
  BannerModel? bannerModel;
  ProductsModelResponse? productModel;
  CategoriesResponseModel? categoriesModel;

  /////banner //////////////
  Future<void> getBannerHome() async {
    emit(LoadingBannerHomeStates()); // Emit loading state
    try {
      final value = await HomeRepo.bannerHome();

      if (value != null) {
        bannerModel = value;
        emit(SuccessBannerHomeStates()); // Emit success state
      } else {
        emit(ErrorBannerHomeStates('Banner fetch failed'));
      }
    } catch (e) {
      // Catch exceptions and emit error state
      emit(ErrorBannerHomeStates(e.toString()));
    }
  }

  ////getallCategories////////////////
  Future<void> getAllCategories() async {
    emit(LoadingCategoriesStates()); // Emit loading state
    try {
      final value = await HomeRepo.allCategories();

      if (value != null) {
        categoriesModel = value;
        emit(SuccessCategoriesStates()); // Emit success state
      } else {
        emit(ErrorCategoriesStates('Products fetch failed'));
      }
    } catch (e) {
      // Catch exceptions and emit error state
      emit(ErrorCategoriesStates(e.toString()));
    }
  }

  ////////all pRoducts //////////////

  Future<void> getAllProducts() async {
    emit(LoadinggetAllProductsStates()); // Emit loading state
    try {
      final value = await HomeRepo.allProducts();

      if (value != null) {
        productModel = value;
        emit(SuccessgetAllProductsStates()); // Emit success state
      } else {
        emit(ErrorgetAllProductsStates('Products fetch failed'));
      }
    } catch (e) {
      // Catch exceptions and emit error state
      emit(ErrorgetAllProductsStates(e.toString()));
    }
  }
}
