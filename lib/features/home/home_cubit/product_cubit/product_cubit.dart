import 'package:bloc/bloc.dart';
import 'package:test1/features/home/data/repos/home_repo_imp.dart';
import 'package:test1/features/home/home_cubit/product_cubit/product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.homeLogic) : super(ProductStateInitial());

  final HomeLogic homeLogic;

  Future<void> fetchProductCubit() async {
    try {
      emit(ProductStateLoading());
      var result = await homeLogic.fetchProduct();
      emit(ProductStateSuccess(result));
    } catch (error) {
      emit(ProductStateFailure(error.toString()));
    }
  }
}