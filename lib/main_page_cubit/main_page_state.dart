class MainPageInitial extends MainPageState {}

abstract class MainPageState {}

class MainPageLoading extends MainPageState {}

class MainPageLoaded extends MainPageState {
  final List<String> data;
  MainPageLoaded(this.data);
}
