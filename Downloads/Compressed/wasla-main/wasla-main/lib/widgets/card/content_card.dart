import 'package:flutter/material.dart';
import 'package:wasla/core/constant/colors.dart';
import 'package:wasla/core/constant/dimensions.dart';
import 'package:wasla/widgets/card/modified_text.dart';

class ContentCard extends StatelessWidget {
  final String cardNumber;
  final String name;

  const ContentCard({Key? key,required this.cardNumber,required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Stack(
        children: [
          Positioned(
              right: -150,
              child: Container(
              height: 300,
           width: 300,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              shape:BoxShape.circle
            ),
          )),
          Positioned(
            left: -200,
              bottom: -470,
              child: Container(
                height: 600,
                width: 600,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    shape:BoxShape.circle
                ),
              )),
          Positioned(
            top: 10,
              right: -20,
              child: Container(child: Image.asset('assets/images/logo.png',width: 130,height: 130,),)),
             Positioned(
                 top: 95,
                 right: 38,
                 child: ModifiedText(text: "ادفع اجرتك عن طريق الكارت",color:Colors.grey.shade800,size: 14,)),
          Positioned(bottom: 20,
              right: 20,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 Text("$cardNumber",style: TextStyle(color:Colors.grey.shade800,fontSize: 22,fontWeight: FontWeight.bold),textAlign: TextAlign.end,),

                 ModifiedText(text: "$name", color: Colors.grey.shade800, size: 15)
               ],
      )
             ),
          Positioned(left: 20,
          top: 110,
          child: Container(
            height: 40,
            child: Image.asset('assets/images/chip.png'),
          ),)

        ],
      ),
    );
  }
}
