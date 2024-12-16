import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/core/core/services/dio_provider.dart';
import 'package:test1/core/core/services/local_storage.dart';
import 'package:test1/features/bottom_var_bar/bottom_var_bar_cubit.dart';

import 'package:test1/features/main_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioProvider.init();
  AppLocalStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812), // استخدم الأبعاد القياسية لشاشة التصميم
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: BlocProvider(
            create: (_) => BottomNavCubit(),
            child: MainScreen(),
          ),
        );
      },
    );
  }
}
