import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wasla/data/model/side_menu_model.dart';
import 'package:wasla/screens/auth/login.dart';
import 'package:wasla/screens/home/pages/home.dart';
import 'package:wasla/screens/home/pages/map.dart';
import 'package:wasla/screens/home/pages/profile.dart';
import 'package:wasla/screens/home/pages/ride_history.dart';
import 'package:wasla/widgets/slider/side_menu.dart';


import '../../../core/constant/assets_image.dart';
import '../../model/onboarding_model.dart';

List<OnBoardingModel>onBoardingList=[
  OnBoardingModel(
      title: "reduce cash handling".tr,
      body:
      "Minimizing the spread\nof infection through banknotes".tr,
      image: AppImageAsset.onBoardingImage1),
  OnBoardingModel(
      title: "Easy And Safe Paymnet".tr,
      body:
      "Facilitate the payment process\nin public transport".tr,
      image: AppImageAsset.onBoardingImage2),
  OnBoardingModel(
      title: "greed of drivers".tr,
      body:
      "Assisting the government and companies specialized\nin transporting citizens\nto reduce the greed of drivers".tr,
      image: AppImageAsset.onBoardingImage3),
  OnBoardingModel(
      title: "No to crowding".tr,
      body:
      "Reduce congestion on tickets".tr,
      image: AppImageAsset.onBoardingImage4),
  OnBoardingModel(
      title: "tracking via GPS".tr,
      body:
      "Increase security by tracking vehicles via GPS".tr,
      image: AppImageAsset.onBoardingImage5),
];
List<String>carousalList=[
  AppImageAsset.onBoardingImage1,
  AppImageAsset.onBoardingImage2,
  AppImageAsset.onBoardingImage3];

List<SideMenuModel>sideMenuList=[
  SideMenuModel(title: "Maps", icon: Icons.location_on,onTap: (){Get.to(MapScreen());}),
  SideMenuModel(title: "Home", icon: Icons.home,onTap: (){Get.to(HomeScreen());}),
  SideMenuModel(title: "History", icon: Icons.history,onTap: (){Get.to(RideHistory());}),
  SideMenuModel(title: "Profile", icon: Icons.settings,onTap: (){Get.to(ProfileScreen());}),
  SideMenuModel(title: "Support", icon: Icons.support,onTap: (){}),
  SideMenuModel(title: "LOGOUT", icon: Icons.logout,onTap: (){Get.to(LoginScreen());}),
];