import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/features/home/home_cubit/carusal_cubit/carusal_cubit.dart';
import 'package:test1/features/home/home_cubit/carusal_cubit/carusal_state.dart';


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
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,

                      ),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.network(
                                product.image,
                                fit: BoxFit.cover,
                                height: 240.h,
                                width: double.infinity,
                              ),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  color: Colors.red,
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
                  },
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: BlocBuilder<CarouselCubit, CarousalState>(
                    builder: (context, state) {
                      if (state is CarousalStateSuccess) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(state.products.data.banners.length, (index) {
                            return Container(
                              width: index == cubit.currentIndex ? 16.0 : 8.0, // تعديل العرض بدلاً من القطر
                              height: 8.0, // ثابت الارتفاع
                              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle, // تغيير الشكل ليصبح مستطيلاً
                                borderRadius: BorderRadius.circular(4.0), // تعديل الحدود لتبدو مستطيلة
                                color: index == cubit.currentIndex
                                    ? const Color.fromRGBO(0, 0, 0, 0.9)
                                    : const Color.fromRGBO(0, 0, 0, 0.4),
                              ),
                            );
                          }),
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    },
                  ),
                ),
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