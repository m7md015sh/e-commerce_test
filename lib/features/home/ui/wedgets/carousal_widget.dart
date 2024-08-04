import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/features/home/home_cubit/carusal_cubit/carusal_cubit.dart';
import 'package:test1/features/home/home_cubit/carusal_cubit/carusal_state.dart';


class CarouselScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CarouselCubit cubit = context.read<CarouselCubit>();

    return Scaffold(


      body: BlocBuilder<CarouselCubit, CarousalState>(
        builder: (context, state) {
          if (state is CarousalStateLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is CarousalStateSuccess) {
            return Stack(
              children: [
                CarouselSlider.builder(
                  itemCount: state.products.data.banners.length,
                  options: CarouselOptions(
                    height: 250,
                    viewportFraction: 1,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 4),
                    onPageChanged: (index, reason) {
                      cubit.updateIndex(index);
                    },
                  ),
                  itemBuilder: (context, index, realIndex) {
                    final product = state.products.data.banners[index];
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.white,

                      ),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.network(
                                product.image,
                                fit: BoxFit.cover,
                                height: 250,
                                width: double.infinity,
                              ),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  color: Colors.red,
                                  child: Text(
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
                              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle, // تغيير الشكل ليصبح مستطيلاً
                                borderRadius: BorderRadius.circular(4.0), // تعديل الحدود لتبدو مستطيلة
                                color: index == cubit.currentIndex
                                    ? Color.fromRGBO(0, 0, 0, 0.9)
                                    : Color.fromRGBO(0, 0, 0, 0.4),
                              ),
                            );
                          }),
                        );
                      } else {
                        return SizedBox.shrink();
                      }
                    },
                  ),
                ),
              ],
            );
          } else if (state is CarousalStateFailure) {
            return Center(child: Text('Error: ${state.error}'));
          } else if (state is CarousalStateInitial) {
            return Center(child: Text('Initial State'));
          } else {
            return Center(child: Text('Unexpected State'));
          }
        },
      ),
    );
  }
}