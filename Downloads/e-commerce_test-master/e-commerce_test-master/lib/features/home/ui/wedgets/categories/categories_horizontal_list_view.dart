import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/features/home/home_cubit/home_cubit.dart';
import 'package:test1/features/home/home_cubit/home_states.dart';
import 'package:test1/features/home/ui/wedgets/categories/categories_item.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeCubit cubit = context.read<HomeCubit>();

    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: BlocBuilder<HomeCubit, HomeStates>(
        buildWhen: (previous, current) =>
            current is LoadingCategoriesStates ||
            current is SuccessCategoriesStates ||
            current is ErrorCategoriesStates,
        builder: (context, state) {
          if (state is LoadingCategoriesStates) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ErrorCategoriesStates) {
            return Center(
              child: Text(
                state.error,
                style: TextStyle(fontSize: 16.sp, color: Colors.red),
              ),
            );
          } else if (state is SuccessCategoriesStates) {
            // final categories = context.read<HomeCubit>().categoriesModel?.data;

            // if (categories == null || categories.isEmpty) {
            //   return Center(
            //     child: Text(
            //       'No Categories Available',
            //       style: TextStyle(fontSize: 16.sp),
            //     ),
            //   );
            // }

            return SizedBox(
              height: 45.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: cubit.categoriesModel!.data!.length,
                separatorBuilder: (context, index) => SizedBox(width: 10.w),
                itemBuilder: (context, index) {
                  final allCategry = cubit.categoriesModel!.data![index];
                  return CategoryButton(
                    text: allCategry.name!,
                    isSelected: index == 0,
                  );
                },
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
