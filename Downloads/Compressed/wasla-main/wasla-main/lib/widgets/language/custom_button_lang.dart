import 'package:flutter/material.dart';
import 'package:wasla/core/constant/colors.dart';
import 'package:wasla/core/constant/dimensions.dart';


class CustomButtonLang extends StatelessWidget {
  final String textButton;
  final void Function() onPressed;
  const CustomButtonLang({Key? key, required this.textButton,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      color: AppColors.mainColor,
      child: MaterialButton(onPressed: onPressed,child: Text(textButton,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: Dimensions.font20,fontFamily: 'Cairo'),),),
    );
  }
}
