import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wasla/core/constant/assets_image.dart';

import 'status_request.dart';


class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget ;
  const HandlingDataView({Key? key,required this.statusRequest,required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest==StatusRequest.loading?
         Center(
          //
          child: Lottie.asset(AppImageAsset.loadingLottie,width: 200,height: 200,)):
    statusRequest==StatusRequest.offlineFailure?
    const Center(
        child: Text("offlineFailure")):
    statusRequest==StatusRequest.serverFailure?
    const Center(
        child: Text("serverFailure")):
    statusRequest==StatusRequest.failure?
     Center(
        child:Lottie.asset(AppImageAsset.emptyCartLottie,width: 200,height: 200,repeat: false)):
    statusRequest==StatusRequest.failure?
    const Center(
        child: Text("No Data")):widget;
  }
}
