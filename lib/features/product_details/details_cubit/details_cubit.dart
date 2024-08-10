import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/features/product_details/details_cubit/details_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  final List<String> imageUrls = [
    'https://oshoplin.com/cdn/shop/products/c-ck-834-1.jpg?v=1672416105&width=1200',
    'https://oshoplin.com/cdn/shop/products/c-ck-834-1.jpg?v=1672416105&width=1200',
    'https://oshoplin.com/cdn/shop/products/c-ck-834-1.jpg?v=1672416105&width=1200',
  ];

  ProductDetailsCubit() : super(ProductDetailsInitial());

  void changeImage(int index) {
    emit(ProductDetailsIndexUpdated(index));
  }

  void fetchDataFromApi() async {
    await Future.delayed(const Duration(seconds: 2));

  }
}
