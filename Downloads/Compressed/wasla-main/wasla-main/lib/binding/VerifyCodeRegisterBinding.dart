import 'package:get/get.dart';
import 'package:wasla/controllers/auth/auth_controller.dart';
import 'package:wasla/controllers/auth/vreify_code_register_controller.dart';


class  VerifyCodeRegisterBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyCodeRegisterControllerImp());
    Get.lazyPut(() => AuthController());


  }

}