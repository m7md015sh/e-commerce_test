import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/main_page_cubit/main_page_state.dart';

class MainPageCubit extends Cubit<MainPageState> {
  MainPageCubit() : super(MainPageInitial());

  bool _dataFetched = false;

  void fetchData() {
    if (!_dataFetched) {
      emit(MainPageLoading());
      // Simulate a delay for data fetching
      Future.delayed(Duration(seconds: 2), () {
        _dataFetched = true;
        emit(MainPageLoaded(List.generate(20, (index) => 'Item $index')));
      });
    }
  }
}
