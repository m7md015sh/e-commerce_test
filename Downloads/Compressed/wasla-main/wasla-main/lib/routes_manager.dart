import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wasla/binding/VerifyCodeRegisterBinding.dart';
import 'package:wasla/binding/auth_binding.dart';
import 'package:wasla/binding/forgot_password_binding.dart';
import 'package:wasla/binding/home_binding.dart';
import 'package:wasla/binding/login_binding.dart';
import 'package:wasla/binding/maps_binding.dart';
import 'package:wasla/binding/on_boarding_binding.dart';
import 'package:wasla/binding/profile_binding.dart';
import 'package:wasla/binding/reset_password_binding.dart';
import 'package:wasla/binding/signup_binding.dart';
import 'package:wasla/binding/verify_reset_code_binding.dart';
import 'package:wasla/controllers/auth/register_controller.dart';
import 'package:wasla/core/middleware/my_middelware.dart';
import 'package:wasla/screens/auth/forget_password.dart';
import 'package:wasla/screens/auth/login.dart';
import 'package:wasla/screens/auth/reset_password.dart';
import 'package:wasla/screens/home/main_home_page.dart';
import 'package:wasla/screens/home/pages/home.dart';
import 'package:wasla/screens/home/pages/map.dart';
import 'package:wasla/screens/home/pages/profile.dart';
import 'package:wasla/screens/language.dart';
import 'package:wasla/screens/onbarding_screen.dart';

import 'core/constant/routes_const.dart';
import 'screens/auth/sign_up.dart';
import 'screens/auth/verify_register_code.dart';
import 'screens/auth/verify_reset_code.dart';
import 'screens/splash_screen.dart';
import 'screens/test.dart';


class AppRoutes{
  //initialRoute
  static const init= RoutesConst.language;

  //get Pages
  static final routes=[

   // GetPage(name: RoutesConst.init, page:()=>  MapScreen(),middlewares: [MyMiddleWare()]),
   // GetPage(name: RoutesConst.init, page:()=> const Language(),middlewares: [MyMiddleWare()] ),
   // GetPage(name: RoutesConst.init, page:()=>  HomeScreen(),middlewares: [MyMiddleWare()],bindings: [HomeBinding(),AuthBinding(),ProfileBinding()]),
    GetPage(name: RoutesConst.onBoarding, page:()=> const OnBoardingScreen(),bindings: [OnBoardingBinding()]),
    GetPage(name: RoutesConst.login, page:()=>  LoginScreen(),bindings: [LoginBinding(),]),
    GetPage(name: RoutesConst.register, page:()=>  SignupScreen(),bindings: [SignupBinding()]),
    GetPage(name: RoutesConst.forgetPassword, page:()=>  ForgetPassword(),bindings: [ForgotPasswordBinding()]),
    GetPage(name: RoutesConst.verifyRegisterCode, page:()=>  VerifyRegisterCode(),bindings: [VerifyCodeRegisterBinding()]),
    GetPage(name: RoutesConst.verifyResetCode, page:()=>  VerifyResetCode(),bindings: [VerifyCodeResetPasswordBinding()]),
    GetPage(name: RoutesConst.resetPassword, page:()=>  ResetPassword(),bindings: [ResetPasswordBinding()]),
    GetPage(name: RoutesConst.test, page:()=>  TestView()),
    GetPage(name: RoutesConst.home, page:()=>  HomeScreen(),bindings: [ProfileBinding(),HomeBinding(),AuthBinding(),MapsBinding()]),
    GetPage(name: RoutesConst.profile, page:()=>  ProfileScreen(),bindings: [ProfileBinding(),AuthBinding()]),
    GetPage(name: RoutesConst.maps, page:()=>  MapScreen(),bindings: [ProfileBinding(),HomeBinding(),AuthBinding(),MapsBinding()]),
    GetPage(name: RoutesConst.splash, page:()=>  SplashScreen(),bindings: [ AuthBinding(),LoginBinding(),ProfileBinding()]),


  ];
}
