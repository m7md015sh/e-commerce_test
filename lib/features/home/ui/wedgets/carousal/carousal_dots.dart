import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/core/resources/color_manager.dart';
import 'package:test1/features/home/home_cubit/carusal_cubit/carusal_cubit.dart';
import 'package:test1/features/home/home_cubit/carusal_cubit/carusal_state.dart';

class CarousalDots extends StatelessWidget {
  const CarousalDots({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return   Positioned(
      bottom: 10,
      right: 10,
      child: BlocBuilder<CarouselCubit, CarousalState>(
        builder: (context, state) {
          if (state is CarousalStateSuccess) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(state.products.data.banners.length, (index) {
                return Container(
                  width: index == currentIndex ? 16.0 : 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(4.0),
                    color: index == currentIndex
                        ? ColorManager.black
                        : ColorManager.blackWithObesity,
                  ),
                );
              }),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
