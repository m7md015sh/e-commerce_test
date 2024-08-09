import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/core/api_service.dart';
import 'package:test1/features/bottom_var_bar/bottom_var_bar_cubit.dart';
import 'package:test1/features/home/data/repos/home_repo_imp.dart';
import 'package:test1/features/home/home_cubit/carusal_cubit/carusal_cubit.dart';
import 'package:test1/features/home/home_cubit/product_cubit/product_cubit.dart';
import 'package:test1/features/main_page.dart';
import 'features/home/ui/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height),
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
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: BlocProvider(
                create: (_) => BottomNavCubit(),
                child: MainScreen(),
              ),
            ));
      },
    );
  }
}
