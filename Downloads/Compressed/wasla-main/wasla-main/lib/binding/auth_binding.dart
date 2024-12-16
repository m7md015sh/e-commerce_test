import 'package:get/get.dart';
import 'package:wasla/controllers/auth/auth_controller.dart';


  class AuthBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(AuthController());
  }

}