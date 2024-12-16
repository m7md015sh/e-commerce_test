import 'package:get/get.dart';
import 'package:wasla/controllers/slider_controller.dart';


class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(SliderController());

  }

}