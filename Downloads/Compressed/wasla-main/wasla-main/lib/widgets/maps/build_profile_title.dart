import 'package:flutter/material.dart';
import 'package:wasla/core/constant/dimensions.dart';

Widget buildProfileTitle(String totalDistance,String totalTime) {
  return Positioned(
      top: 10,
      left: 20,
      right: 20,
      child: SizedBox(
        width: Dimensions.screenWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const CircleAvatar(
            //   backgroundColor: CupertinoColors.activeGreen,
            // ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text:  TextSpan(children: [
                      TextSpan(
                          text: "$totalDistance  ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "$totalTime",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ])),
                // const Text(
                //   "where are you going?",
                //   style: TextStyle(
                //       fontSize: 16,
                //       color: Colors.black,
                //       fontWeight: FontWeight.bold),
                // )
              ],
            )
          ],
        ),
      ));
}