import 'package:flutter/material.dart';

class StackImageAuth extends StatelessWidget {
     StackImageAuth({Key? key, required this.text, required this.assetsImage}) : super(key: key);
     final String text;
     final String assetsImage;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
         assetsImage,
          width: double.infinity,
          height: 350,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            color: Colors.black.withOpacity(0.2),
            child:  Center(
              child: Text(
                '$text',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
