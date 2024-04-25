import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/utils/text_style.dart';
import 'package:mentorship/features/home/presentation/manager/home_cubit.dart';
import 'package:mentorship/features/home/presentation/manager/home_state.dart';

import '../../../../core/utils/app_images.dart';
import '../widgets/rocket_cart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is HomeGetAllRocketsSuccess ||
            HomeCubit.get(context).rockets.isNotEmpty) {
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: Colors.black,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                title: Image.asset(
                  AppImages.logo,
                  width: 120.w,
                ),
                centerTitle: false,
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings_outlined,
                        color: Colors.white,
                      ))
                ],
              ),
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Past Launches",
                        style: AppTextStyle.textStyle14white(),
                      ),
                      const Divider(),
                      ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => RocketCart(
                          rocketEntity: HomeCubit.get(context).rockets[index],
                        ),
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: HomeCubit.get(context).rockets.length,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
