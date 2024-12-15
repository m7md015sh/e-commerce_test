import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/core/api_service.dart';
import 'package:test1/features/bottom_var_bar/bottom_var_bar_cubit.dart';
import 'package:test1/features/categories_screen/categories_cubit/categories_cubit.dart';
import 'package:test1/features/categories_screen/data/repos/categories_repo.dart';
import 'package:test1/features/home/data/repos/home_repo_imp.dart';
import 'package:test1/features/home/home_cubit/carusal_cubit/carusal_cubit.dart';
import 'package:test1/features/home/home_cubit/product_cubit/product_cubit.dart';
import 'package:test1/features/main_page.dart';
import 'package:test1/main_page_cubit/main_page_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => CarouselCubit(
                HomeLogic(
                  ApiService(
                    Dio(),
                  ),
                ),
              )..fetchCarouselCubit(),
            ),
            BlocProvider(
              create: (context) => ProductCubit(
                HomeLogic(
                  ApiService(
                    Dio(),
                  ),
                ),
              )..fetchProductCubit(),
            ),
            BlocProvider(
              create: (context) => CategoriesCubit(
                CategoriesLogic(
                  ApiService(
                    Dio(),
                  ),
                ),
              )..fetchCategoriesCubit(),
            ),
            BlocProvider(create: (context)=> MainPageCubit()),
            BlocProvider(create: (context)=> BottomNavCubit ())
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home:  MainScreen(),
            ),
          );
      },
    );
  }
}

