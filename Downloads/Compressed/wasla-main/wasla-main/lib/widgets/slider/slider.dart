import 'package:card_swiper/card_swiper.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wasla/controllers/slider_controller.dart';
import 'package:wasla/core/constant/dimensions.dart';
import 'package:wasla/data/data_source/static/static.dart';

class SliderWidget extends StatefulWidget {

   SliderWidget( {Key? key}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();

}

class _SliderWidgetState extends State<SliderWidget> {
  final sliderController=Get.find<SliderController>();

  double _current=0;
  // List<T> map<T>(List list,Function handler){
  //   List<T>result=[];
  //   for()
  // }

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return sliderController.isLoading_sliders.value? Container(              height: 190,
      ) : Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(left: 16,right: 16,top: 16),
        width: Dimensions.screenWidth,
        child: Column(
          children: [
            Container(
              width: Dimensions.screenWidth,
              height: 190,
              child: Swiper(
                onIndexChanged: (index){
                  setState(() {
                    _current=index.toDouble();
                  });


                },autoplay: true,layout: SwiperLayout.DEFAULT, itemCount: sliderController.allSliderList.length,itemBuilder: (BuildContext context,index){
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: NetworkImage(sliderController.allSliderList[index].imageUrl,),
                        fit:BoxFit.cover,
                      )
                  ),
                );

              },
              ),
            ),
            // SizedBox(height: 12,),
            // DotsIndicator(
            //   dotsCount: sliderController.allSliderList.length==0?1:sliderController.allSliderList.length,
            //   position: _current,
            //   decorator: DotsDecorator(
            //     size: const Size.square(9.0),
            //     activeSize: const Size(18.0, 9.0),
            //     activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
            //   ),
            // )

          ],
        ),
      );
    });

  }
}
