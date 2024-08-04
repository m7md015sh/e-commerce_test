import 'package:test1/features/home/data/models/home_models.dart';

abstract class CarousalState {}

class CarousalStateInitial extends CarousalState {}

class CarousalStateLoading extends CarousalState {}

class CarousalStateSuccess extends CarousalState {
  final HomeModel products;
  final int currentIndex;

  CarousalStateSuccess(this.products, this.currentIndex);
}

class CarousalStateFailure extends CarousalState {
  final String error;

  CarousalStateFailure(this.error);
}
