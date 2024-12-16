import 'package:get/get.dart';
import 'package:wasla/controllers/auth/auth_controller.dart';
import 'package:wasla/controllers/auth/login_controller.dart';


class  LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => AuthController());

  }

}