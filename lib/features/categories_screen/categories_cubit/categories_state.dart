import 'package:test1/features/categories_screen/data/categories_model.dart';

abstract class CategoriesState {}

class CategoriesStateInitial extends CategoriesState {}

class CategoriesStateLoading extends CategoriesState {}

class CategoriesStateSuccess extends CategoriesState {
  final CategoriesModel categories;
  final int currentIndex;

  CategoriesStateSuccess(this.categories, this.currentIndex);
}

class CategoriesStateFailure extends CategoriesState {
  final String error;

  CategoriesStateFailure(this.error);
}
