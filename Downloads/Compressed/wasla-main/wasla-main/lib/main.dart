import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wasla/core/constant/routes_const.dart';
import 'package:wasla/core/services/services.dart';
import 'binding/initial_binding.dart';
import 'core/constant/app_constants.dart';
import 'language/local_controller.dart';
import 'language/localaization.dart';
import 'routes_manager.dart';
SharedPreferences? sharepref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await initialService();
  sharepref = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    MyLocalController controller = Get.put(MyLocalController ());
    // AuthController authController=  Get.put(AuthController());
    return GetMaterialApp(
      initialBinding: InitialBinding(),
      translations: LocalizationApp(),
      fallbackLocale: Locale(AppConstants.ara),
        locale: controller.intialLang,
      debugShowCheckedModeBanner: false,

      //initialRoute: authController.isAuth()? RoutesConst.home:RoutesConst.login,
      initialRoute: RoutesConst.splash,
      getPages: AppRoutes.routes,

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home:  const Language(),
    );
  }
}
