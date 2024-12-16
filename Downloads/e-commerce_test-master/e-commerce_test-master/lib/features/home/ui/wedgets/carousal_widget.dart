import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/features/home/home_cubit/home_cubit.dart';

import '../../home_cubit/home_states.dart';

class CarouselScreen extends StatefulWidget {
  const CarouselScreen({super.key});

  @override
  State<CarouselScreen> createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    final HomeCubit cubit = context.read<HomeCubit>();

    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeStates>(
        builder: (context, state) {
          if (state is LoadingBannerHomeStates) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is SuccessBannerHomeStates) {
            return Stack(
              children: [
                CarouselSlider.builder(
                  itemCount: cubit.bannerModel!.data!.length,
                  options: CarouselOptions(
                    height: 245.h,
                    viewportFraction: 1,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 4),
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentindex = index;
                      });
                    },
                  ),
                  itemBuilder: (context, index, realIndex) {
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
                                cubit.bannerModel!.data![index].imageUrl!,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      cubit.bannerModel!.data!.length,
                      (index) {
                        return Container(
                          width: index == currentindex ? 16.0 : 8.0,
                          height: 8.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(4.0),
                            color: index == currentindex
                                ? const Color.fromRGBO(0, 0, 0, 0.9)
                                : const Color.fromRGBO(0, 0, 0, 0.4),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          } else if (state is ErrorBannerHomeStates) {
            return Center(child: Text('Error: ${state.error}'));
          } else {
            return const Center(child: Text('Unexpected State'));
          }
        },
      ),
    );
  }
}
