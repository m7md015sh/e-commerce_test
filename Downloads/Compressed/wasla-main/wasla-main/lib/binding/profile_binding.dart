import 'package:get/get.dart';
import 'package:wasla/controllers/auth/auth_controller.dart';
import 'package:wasla/controllers/auth/profile_controller.dart';


class  ProfileBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
    Get.lazyPut(() => AuthController());


  }

}