import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/features/home/home_cubit/carusal_cubit/carusal_cubit.dart';
import 'package:test1/features/home/home_cubit/carusal_cubit/carusal_state.dart';
import 'package:test1/features/home/ui/wedgets/carousal/carousal_content.dart';
import 'package:test1/features/home/ui/wedgets/carousal/carousal_dots.dart';


class CarouselScreen extends StatelessWidget {
  const CarouselScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CarouselCubit cubit = context.read<CarouselCubit>();

    return Scaffold(


      body: BlocBuilder<CarouselCubit, CarousalState>(
        builder: (context, state) {
          if (state is CarousalStateLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is CarousalStateSuccess) {
            return Stack(
              children: [
                CarouselSlider.builder(
                  itemCount: state.products.data.banners.length,
                  options: CarouselOptions(
                    height: 245.h,
                    viewportFraction: 1,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 4),
                    onPageChanged: (index, reason) {
                      cubit.updateIndex(index);
                    },
                  ),
                  itemBuilder: (context, index, realIndex) {
                    final product = state.products.data.banners[index];
                    return CarousalContent(image: product.image);
                  },
                ),
                CarousalDots(currentIndex: cubit.currentIndex),
              ],
            );
          } else if (state is CarousalStateFailure) {
            return Center(child: Text('Error: ${state.error}'));
          } else if (state is CarousalStateInitial) {
            return const Center(child: Text('Initial State'));
          } else {
            return const Center(child: Text('Unexpected State'));
          }
        },
      ),
    );
  }
}