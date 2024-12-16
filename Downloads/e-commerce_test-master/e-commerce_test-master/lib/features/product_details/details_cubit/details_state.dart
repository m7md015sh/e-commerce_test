abstract class ProductDetailsState {}

class ProductDetailsInitial extends ProductDetailsState {}

class ProductDetailsIndexUpdated extends ProductDetailsState {
  final int currentIndex;

  ProductDetailsIndexUpdated(this.currentIndex);
}
