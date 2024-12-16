
import 'package:get/get.dart';
import 'package:wasla/data/data_source/static/static.dart';

class OnBoardingController extends GetxController {
  // late PageController pageController;
  int currentIndex = 0;

  @override
  onChange(int index) {
    currentIndex = index;
    update();
  }


// toNext() {
//   currentIndex++;
//   if(currentIndex>carousalList.length-1){
//    // Get.offAllNamed(RoutesConst.login);
//   }else {
//     pageController.animateToPage(currentIndex,
//         duration:const Duration(microseconds: 1500), curve: Curves.easeInOut);
//   }
// }


}