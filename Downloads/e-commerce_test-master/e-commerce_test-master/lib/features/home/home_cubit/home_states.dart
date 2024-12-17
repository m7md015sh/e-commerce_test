class HomeStates {}

///////banner //////////////
class IntialHomeStates extends HomeStates {}

class LoadingBannerHomeStates extends HomeStates {}

class SuccessBannerHomeStates extends HomeStates {}

class ErrorBannerHomeStates extends HomeStates {
  final String error;
  ErrorBannerHomeStates(this.error);
}
class LoadinggetAllProductsStates extends HomeStates {}

class SuccessgetAllProductsStates extends HomeStates {}

class ErrorgetAllProductsStates extends HomeStates {
  final String error;
  ErrorgetAllProductsStates(this.error);
}
