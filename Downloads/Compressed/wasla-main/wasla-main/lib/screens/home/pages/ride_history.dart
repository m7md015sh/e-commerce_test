import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:lottie/lottie.dart';
import 'package:wasla/core/constant/StyleScheme.dart';
import 'package:wasla/core/constant/assets_image.dart';
import 'package:wasla/core/constant/colors.dart';

class RideHistory extends StatelessWidget {
  const RideHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All Trips'.tr,
          style: TextStyle(fontFamily: 'Cairo'),
        ),
        backgroundColor: AppColors.mainColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: false
                ? Center(
                    child: Lottie.asset(
                      AppImageAsset.loadingLottie,
                      width: 200,
                      height: 200,
                    ),
                  )
                : ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return historyTripCard(
                        //controller: allOrderscontroller,
                        index: index,
                      );
                    }),
          )
        ],
      ),
    );
  }
}

class historyTripCard extends StatelessWidget {
  //final AllOrdersController controller;
  final int index;
  const historyTripCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: EdgeInsets.zero,
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'كود الرحلة'.tr,
                    style: headingStyle,
                  ),
                  Text('af8fkfs57825',
                      style: headingStyle.copyWith(color: Colors.grey)),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: AppColors.mainDarkColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('trip Price'.tr,
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo',
                                color: Colors.white)),
                        const Text(' 12 ج.م ',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo',
                                color: Colors.white)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: AppColors.mainDarkColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Balance before'.tr,
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo',
                                color: Colors.white)),
                        Text('20 ج.م ',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo',
                                color: Colors.white)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: AppColors.mainDarkColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Balance after'.tr,
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo',
                                color: Colors.white)),
                        Text(
                            '50 ج',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo',
                                color: Colors.white)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //Text('total Price:  ${controller.allOrderList[index].itemsPrice+20} EL'),

            // Padding(
            //     padding: const EdgeInsets.only(
            //         top: 10.0, bottom: 3, left: 3, right: 3),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text(
            //           'الاسم'.tr,
            //           style: headingStyle,
            //         ),
            //         Expanded(
            //           child: Text(
            //             'Moahmed Shokry',
            //             overflow: TextOverflow.ellipsis,
            //             maxLines: 1,
            //             softWrap: false,
            //             textAlign: TextAlign.left,
            //             style: headingStyle.copyWith(color: Colors.grey),
            //           ),
            //         ),
            //       ],
            //     )),
            // divider(),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'من: ',
                    style: headingStyle,
                  ),
                  Expanded(
                      child: Text(
                    'الموقف',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                    textAlign: TextAlign.left,
                    style: headingStyle.copyWith(color: Colors.grey),
                  ))
                ],
              ),
            ),
            divider(),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'الى: ',
                    style: headingStyle,
                  ),
                  Expanded(
                    child: Text(
                      'الكليات',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                      softWrap: false,
                      style: headingStyle.copyWith(color: Colors.grey),
                      textAlign: TextAlign.left,
                    ),
                  )
                ],
              ),
            ),
            divider(),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'تاريخ الانشاء',
                    style: headingStyle,
                  ),
                  Text(
                    '22/1/2023',
                    style: headingStyle.copyWith(color: Colors.grey),
                  )
                ],
              ),
            ),
            divider(),
            Padding(
              padding: const EdgeInsets.only(
                  top: 3.0, bottom: 10, left: 3, right: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'الوقت',
                    style: headingStyle,
                  ),
                  Text(
                    '11:45 AM',
                    style: headingStyle.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ),
            // InkWell(
            //   onTap: () {
            //   //  Get.off(TrackOrderPage(index: index));
            //   },
            //   child: Container(
            //     width: double.infinity,
            //     padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.all(Radius.circular(10)),
            //       color: AppColors.mainDarkColor,
            //     ),
            //     child: Text(
            //       "Track your Order".tr,
            //       style: TextStyle(
            //         fontSize: 15,
            //         fontWeight: FontWeight.bold,
            //         fontFamily: 'Cairo',
            //         color: Colors.white,
            //       ),
            //       textAlign: TextAlign.center,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

Container divider() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 15),
    height: 1,
    color: Colors.grey,
  );
}