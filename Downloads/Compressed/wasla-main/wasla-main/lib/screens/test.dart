import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wasla/core/class/handling_data_view.dart';
import 'package:wasla/core/constant/colors.dart';
import 'package:wasla/core/constant/dimensions.dart';
import 'package:wasla/widgets/card/card.dart';
import 'package:wasla/widgets/card/content_card.dart';

import '../controllers/test_controller.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(title: const Text("Test Screen"),),
    //   body: GetBuilder<TestController>(builder: ((controller) {
    //     return HandlingDataView(statusRequest: controller.statusRequest, widget: ListView.builder(itemCount: controller.data.length,itemBuilder: (context, index) {
    //       return Text("${controller.data}");
    //     }));
    //   }),
    // )

      body: SingleChildScrollView(
        child: Column(
          children: const [
            SmartCard(cardNumber: "0000 0000 0000 0000",name: "محمد شكرى محمد السيد",),
          ],
        ),
      )

    );




  }
}
