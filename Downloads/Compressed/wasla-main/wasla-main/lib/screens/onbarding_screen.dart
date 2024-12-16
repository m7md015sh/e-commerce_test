import 'package:flutter/material.dart';
import 'package:wasla/widgets/onboarding/custom_btn.dart';

import '../core/constant/dimensions.dart';
import '../widgets/onboarding/dots.dart';
import '../widgets/onboarding/page_view_builder.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
              children: [
                 Expanded(flex: 3, child: OnBoardingPageViewBuilder()),
                Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        const OnBoardingDots(),
                        const Spacer(),
                        Container(
                          margin:  EdgeInsets.only(bottom: Dimensions.height45),
                          decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(30)),
                          height: 40,
                          child:  CustomButtonOnBoarding(),
                        )
                      ],
                    ))
              ],
            )));
  }
}
