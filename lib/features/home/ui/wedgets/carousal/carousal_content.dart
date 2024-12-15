import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/core/resources/color_manager.dart';

class CarousalContent extends StatelessWidget {
  const CarousalContent({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: const BoxDecoration(
        //  color: ColorManager.white,

      ),
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
               image,
                fit: BoxFit.cover,
                height: 240.h,
                width: double.infinity,
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  color: ColorManager.red,
                  child: const Text(
                    '20% off',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
