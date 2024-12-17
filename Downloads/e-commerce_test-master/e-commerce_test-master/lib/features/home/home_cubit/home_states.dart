class HomeStates {}

///////banner //////////////
class IntialHomeStates extends HomeStates {}

class LoadingBannerHomeStates extends HomeStates {}

class SuccessBannerHomeStates extends HomeStates {}

class ErrorBannerHomeStates extends HomeStates {
  final String error;
  ErrorBannerHomeStates(this.error);
}


///////////all categories///////

class LoadingCategoriesStates extends HomeStates {}

class SuccessCategoriesStates extends HomeStates {}

class ErrorCategoriesStates extends HomeStates {
  final String error;
  ErrorCategoriesStates(this.error);

}
/////////////////allproducts////////////
class LoadinggetAllProductsStates extends HomeStates {}

class SuccessgetAllProductsStates extends HomeStates {}

class ErrorgetAllProductsStates extends HomeStates {
  final String error;
  ErrorgetAllProductsStates(this.error);
}
