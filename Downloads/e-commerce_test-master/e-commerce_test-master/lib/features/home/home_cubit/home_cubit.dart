import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/features/home/data/models/response_banner_model/banner_model/banner_model.dart';
import 'package:test1/features/home/data/repos/home_repo_imp.dart';
import 'package:test1/features/home/home_cubit/home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(IntialHomeStates());
  BannerModel? bannerModel;
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
}
