import 'package:get/get.dart';
import 'package:wasla/controllers/onboarding_controller.dart';
import 'package:wasla/core/class/crud.dart';


class  InitialBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(Crud());
  }

}