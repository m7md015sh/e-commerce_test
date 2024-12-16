import 'package:get/get.dart';
import 'package:wasla/controllers/onboarding_controller.dart';


class  OnBoardingBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingControllerImp());
  }

}