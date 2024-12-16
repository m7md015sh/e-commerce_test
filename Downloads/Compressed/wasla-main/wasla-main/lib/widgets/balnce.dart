import 'package:flutter/material.dart';

class BalanceeWidget extends StatelessWidget {
   final String balance;
   BalanceeWidget({Key? key,required this.balance}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.green,
      child:  Center(child: Text( balance,style: TextStyle(fontSize: 18),)),
    );
  }
}
