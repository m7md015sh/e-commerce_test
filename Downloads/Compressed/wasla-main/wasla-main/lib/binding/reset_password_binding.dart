import 'package:get/get.dart';
import 'package:wasla/controllers/forgot_password/reset_password_controller.dart';


class  ResetPasswordBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ResetPasswordController());
  }

}