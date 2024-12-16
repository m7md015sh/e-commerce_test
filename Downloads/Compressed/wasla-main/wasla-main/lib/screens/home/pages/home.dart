import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wasla/controllers/slider_controller.dart';

import 'package:wasla/widgets/drawer/build_drawer.dart';
import 'package:wasla/widgets/slider/slider.dart';

class HomeScreen extends StatelessWidget {
  final sliderController=Get.find<SliderController>();
  final GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();

   HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,

        //   drawer: SideMenu(),
      drawer: BuildDrawer(),
      // appBar: AppBar(
      //   title: Text(
      //     AppConstants.APP_NAME,
      //     style: TextStyle(
      //         color: Colors.black.withOpacity(0.8),
      //         fontWeight: FontWeight.bold),
      //   ),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0.0,
      //   leading: Builder(
      //     builder: (BuildContext context) {
      //       return IconButton(
      //         icon: const Icon(
      //           Icons.menu,
      //           color: Colors.black,
      //           size: 30, // Changing Drawer Icon Size
      //         ),
      //         onPressed: () {
      //           Scaffold.of(context).openDrawer();
      //         },
      //         tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      //       );
      //     },
      //   ),
      // ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children:  [
      //
      //          SliderWidget(),
      //
      //
      //
      //       SizedBox(height: 12,),
      //
      //
      //       //SmartCard(cardNumber: "0000 0000 0000 0000",name: "محمد شكرى محمد السيد",),
      //       Center(child: const SmartCard(cardNumber: "0000 1111 2222 0000",name: "هايدى خطاب بسيونى",)),
      //     //  ServiceSection()
      //
      //       // SmartCard(cardNumber: "0000 0000 0000 0000",name: "محمد شكرى محمد السيد",),
      //       // SmartCard(cardNumber: "0000 0000 0000 0000",name: "محمد شكرى محمد السيد",),
      //       // SmartCard(cardNumber: "0000 0000 0000 0000",name: "محمد شكرى محمد السيد",),
      //       // SmartCard(cardNumber: "0000 0000 0000 0000",name: "محمد شكرى محمد السيد",),
      //       // SmartCard(cardNumber: "0000 0000 0000 0000",name: "محمد شكرى محمد السيد",),
      //       // SmartCard(cardNumber: "0000 0000 0000 0000",name: "محمد شكرى محمد السيد",),
      //
      //       //BalanceeWidget(balance: "100"),
      //
      //       ProductWidget(productName: "productName", rating: 5, price: 110, imageUrl: "https://res.cloudinary.com/weedakii/image/upload/v1660880805/products/rmsi5eabgrdzdklash7b.jpg")
      //     ],
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.4,
                decoration: const BoxDecoration(
                    color: Color(0xFF0dac86),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
              ),
              Column(
                //

                  children: [
                  Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                       Row(
                         children: [
                           IconButton(onPressed: (){_scaffoldKey.currentState!.openDrawer();}, icon: const Icon(Icons.filter_list_outlined,
                             color: Colors.white,
                             size: 28,)),
                           Padding(
                             padding: EdgeInsets.symmetric(horizontal: 8.0),
                             child: Text(
                               'PAYTAC'.tr,
                               style: TextStyle(
                                   color: Colors.white, fontSize: 20,fontWeight: FontWeight.w900,),
                             ),
                           ),
                         ],
                       ),

                        const CircleAvatar(
                          radius: 25.0,
                          backgroundImage: AssetImage('assets/images/person.jpg'),
                          backgroundColor: Colors.transparent,
                        )
                      ],
                    ),



                  ),



                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          child: Column(
                            children: [
                               Text(
                                'Card Balance'.tr,
                                style: TextStyle(
                                    color: Color(0xffeeeeee), fontSize: 17),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width / 8,
                                      height:
                                      MediaQuery.of(context).size.height / 30,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff4bc2a6),
                                          borderRadius: BorderRadius.circular(10)),
                                      child:  Center(
                                          child: Text('EGP'.tr,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold))),
                                    ),
                                  ),
                                  Text(
                                    '1000.00'.tr,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 4.4,
                          height: MediaQuery.of(context).size.height / 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children:  [
                                Text(
                                  'Top Up'.tr,
                                  style: TextStyle(
                                      color: Color(0xff46c1a4),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.add,
                                  color: Color(0xff46c1a4),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),


                  //
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'All Transport'.tr,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffeeeeee)),
                            )),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children:  [
                            TransportCard(icon: Image(image: AssetImage('assets/icons/bus_two.png'),width: 80,height: 80,)
                                ,title: "bus".tr),
                            Spacer(),
                            TransportCard(icon: Image(image: AssetImage('assets/icons/train.png'),width: 80,height: 80,)
                                ,title: 'train'.tr),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                              TransportCard(icon:Image(image: AssetImage('assets/icons/bike.png'),width: 80,height: 80,)
                                  ,title: 'bike'.tr),
                              Spacer(),
                              TransportCard(icon: Image(image: AssetImage('assets/icons/taxi.png'),width: 80,height: 80,)
                                  ,title: 'taxi'.tr),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //SmartCard(cardNumber: "0000 0000 0000 0000",name: "محمد شكرى محمد السيد",),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: SliderWidget(),
                  ),

                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
class TransportCard extends StatelessWidget {
  final Image icon;
  final String title;
  const TransportCard({Key? key, required this.icon, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width/2.3,
      height: MediaQuery.of(context).size.height/4.2,
      child: Card(
        elevation: 5.5,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            icon,
            const SizedBox(
              height: 5 ,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
