import 'package:get/get.dart';
import 'package:wasla/controllers/maps_controller.dart';


class  MapsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => MapController());


  }

}