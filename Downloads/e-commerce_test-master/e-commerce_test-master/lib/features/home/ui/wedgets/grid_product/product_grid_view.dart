// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:test1/core/core/functions/navigation.dart';
// import 'package:test1/features/product_details/product_details.dart';
// import 'product_card.dart';

// class ProductGridView extends StatelessWidget {
//   const ProductGridView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ProductCubit, ProductState>(builder: (context, state) {
//       if (state is ProductStateSuccess) {
//         return Container(
//           padding: EdgeInsets.all(8.0.w), // استخدام ScreenUtil للأبعاد
//           child: GestureDetector(
//             onTap: () {
//               push(context, const ProductDetailsPage());
//             },
//             child: GridView.builder(
//               physics: const NeverScrollableScrollPhysics(),
//               shrinkWrap: true,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2, // عدد الأعمدة
//                 crossAxisSpacing: 8.0.w, // المسافة بين الأعمدة
//                 mainAxisSpacing: 8.0.h, // المسافة بين الصفوف
//                 childAspectRatio: 1.w / 1.6.h, // نسبة العرض للطول مرنة
//               ),
//               itemCount: state.books.data.products.length,
//               itemBuilder: (context, index) {
//                 return ProductCard(
//                   name: state.books.data.products[index].name,
//                   image: state.books.data.products[index].image,
//                   price: state.books.data.products[index].price,
//                   price_after_desc: state.books.data.products[index].discount,
//                 );
//               },
//             ),
//           ),
//         );
//       } else if (state is ProductStateLoading) {
//         return Center(child: CircularProgressIndicator());
//       } else {
//         return Center(
//           child:
//               Text('Error loading products', style: TextStyle(fontSize: 16.sp)),
//         );
//       }
//     });
//   }
// }
