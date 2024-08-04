


import 'package:test1/features/home/data/models/home_models.dart';

abstract class ProductState  {
  const ProductState();

}

class ProductStateInitial extends ProductState {}

class ProductStateLoading extends ProductState {}

class ProductStateFailure extends ProductState {
  final String errMessage;

  const ProductStateFailure(this.errMessage);
}

class ProductStateSuccess extends ProductState {
  final HomeModel books;

  const ProductStateSuccess(this.books);
}