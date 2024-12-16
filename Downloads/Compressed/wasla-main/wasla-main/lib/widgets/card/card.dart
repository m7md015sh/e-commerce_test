import 'package:flutter/material.dart';
import 'package:wasla/core/constant/colors.dart';
import 'package:wasla/core/constant/dimensions.dart';
import 'package:wasla/widgets/card/content_card.dart';

class SmartCard extends StatelessWidget {
  final String cardNumber;
  final String name;
  const SmartCard({Key? key,required this.cardNumber,required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(15),
      height: 250,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          boxShadow: AppColors.shadows,
          borderRadius: BorderRadius.circular(15)

      ),
      child: ContentCard(cardNumber: cardNumber,name: name,),
    );
  }
}
