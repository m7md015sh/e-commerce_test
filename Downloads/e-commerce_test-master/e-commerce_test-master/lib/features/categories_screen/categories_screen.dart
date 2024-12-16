// import 'package:flutter/material.dart';
// import 'package:test1/features/categories_screen/categories_cubit/categories_state.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class CategoriesScreen extends StatelessWidget {
//   const CategoriesScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  BlocBuilder<CategoriesCubit,CategoriesState>(
//       builder:(context,state){
//         if(state is CategoriesStateLoading) {
//           return const Center(child: CircularProgressIndicator());

//       }
//         else if (state is CategoriesStateSuccess){
//           return Column(
//             children: [

//               Expanded(
//                 child: GridView.builder(
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2, // عدد الأعمدة
//                     crossAxisSpacing: 10,
//                     mainAxisSpacing: 10,
//                   ),
//                   itemCount: state.categories.data.data.length, // عدد المنتجات
//                   itemBuilder: (context, index) =>
//                       Card(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                              Container(
//                                  height: 160,
//                                  child: Image.network(state.categories.data.data[index].image)),
//                             Text(state.categories.data.data[index].name),
//                           ],
//                         ),
//                       ),
//                 ),
//               ),
//             ],
//           );
//         }else if(state is CategoriesStateFailure){
//           return Center(child: Text('Error: ${state.error}'));
//         }else{
//           return const Center(child: Text('Unexpected State'));
//         }
//       },
//          );

//   }
// }
