import 'package:bloc/bloc.dart';
import 'package:test1/features/home/data/models/home_models.dart';
import 'package:test1/features/home/data/repos/home_repo_imp.dart';
import 'package:test1/features/home/home_cubit/carusal_cubit/carusal_state.dart';

class CarouselCubit extends Cubit<CarousalState> {
  CarouselCubit(this.homeLogic) : super(CarousalStateInitial());

  final HomeLogic homeLogic;
  int currentIndex = 0;
  HomeModel? products;

  Future<void> fetchCarouselCubit() async {
    try {
      emit(CarousalStateLoading());
      var result = await homeLogic.fetchProduct();
      products = result;
      emit(CarousalStateSuccess(result, currentIndex));
    } catch (error) {
      emit(CarousalStateFailure(error.toString()));
    }
  }

  void updateIndex(int index) {
    currentIndex = index;
    emit(CarousalStateSuccess(products!, currentIndex));
  }
}
