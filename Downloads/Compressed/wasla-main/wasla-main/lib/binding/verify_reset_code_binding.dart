import 'package:get/get.dart';
import 'package:wasla/controllers/forgot_password/vreify_code_reset_controller.dart';


class  VerifyCodeResetPasswordBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyCodeResetController());
  }

}