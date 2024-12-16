import 'package:get/get.dart';
import 'package:wasla/controllers/forgot_password/check_email_controller.dart';


class  ForgotPasswordBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CheckEmailController());
  }

}