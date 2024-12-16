import 'package:get/get.dart';
import 'package:wasla/controllers/auth/auth_controller.dart';
import 'package:wasla/controllers/auth/register_controller.dart';


class  SignupBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController());
    Get.put(AuthController());

  }

}