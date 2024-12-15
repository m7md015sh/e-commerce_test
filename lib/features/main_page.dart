import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/core/resources/color_manager.dart';
import 'package:test1/core/resources/strings_manager.dart';
import 'package:test1/core/resources/styles_manager.dart';
import 'package:test1/features/bottom_var_bar/bottom_var_bar_cubit.dart';
import 'package:test1/features/cart_screen/cart_screen.dart';
import 'package:test1/features/categories_screen/categories_screen.dart';
import 'package:test1/features/favorits_screen/favorits_screen.dart';
import 'package:test1/features/home/ui/home_view.dart';
import 'package:test1/main_page_cubit/main_page_cubit.dart';


import 'profile_screen/profile_screen.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => MainPageCubit(),
        child: MainScreen(),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  final List<Widget> _screens = [
    const HomeView(),
    const CategoriesScreen(),
    const FavoritesScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title:  Text(AppStrings.appName,style: getBoldStyle(
        color: ColorManager.blackWithObesityDarker,fontSize: 22.sp
      ),),actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.search,)),
        IconButton(onPressed: (){}, icon: const Icon(Icons.notifications,)),
      ],),

      body: BlocBuilder<BottomNavCubit, int>(
        builder: (context, state) {
          return _screens[state];
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomNavCubit, int>(
        builder: (context, state) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: state,
            onTap: (index) {
              context.read<BottomNavCubit>().updateIndex(index);
            },
            selectedItemColor: ColorManager.primaryColor,
            unselectedItemColor: Colors.black,
            selectedLabelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            unselectedLabelStyle: const TextStyle(fontSize: 12),
            iconSize: 30,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.shop),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.grid_view),
                label: 'Categories',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          );
        },
      ),
    );
  }
}