// import 'package:bloc/bloc.dart';
// import 'package:test1/features/categories_screen/categories_cubit/categories_state.dart';
// import 'package:test1/features/categories_screen/data/categories_model.dart';
// import 'package:test1/features/categories_screen/data/repos/categories_repo.dart';

// class CategoriesCubit extends Cubit<CategoriesState> {
//   CategoriesCubit(this.categoriesLogic) : super(CategoriesStateInitial());

//   final CategoriesLogic categoriesLogic;
//   int currentIndex = 0;
//   CategoriesModel? categories;

//   Future<void> fetchCategoriesCubit() async {
//     try {
//       emit(CategoriesStateLoading());
//       var result = await categoriesLogic.fetchCategories();
//       categories = result;
//       emit(CategoriesStateSuccess(result, currentIndex));
//     } catch (error) {
//       emit(CategoriesStateFailure(error.toString()));
//     }
//   }

// }
