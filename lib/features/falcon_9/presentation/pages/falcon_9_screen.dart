import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorship/config/routes.dart';
import 'package:mentorship/core/utils/app_component.dart';
import 'package:mentorship/core/utils/app_images.dart';
import 'package:mentorship/core/utils/text_style.dart';

class Falcon9Screen extends StatelessWidget {
  const Falcon9Screen({super.key});

  @override
  Widget build(BuildContext context) {
    Duration duration = const Duration(days: 2, hours: 15, minutes: 40);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.bk),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Image.asset(
            AppImages.logo,
            width: 120.w,
          ),
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "FALCON 9",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 30.sp,
                  ),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Text(
                  "Remaining",
                  style: AppTextStyle.bodySmall(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 45.h,
                          child: Row(
                            children: [
                              Text(
                                duration.inDays.toString().padLeft(2, '0'),
                                style: AppTextStyle.durationLargeStyle(),
                              ),
                              Text(
                                ":",
                                style: AppTextStyle.durationLargeStyle(),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Days",
                          style: AppTextStyle.bodySmall(fontSize: 14),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 45.h,
                          child: Row(
                            children: [
                              Text(
                                duration.inHours
                                    .remainder(24)
                                    .toString()
                                    .padLeft(2, '0'),
                                style: AppTextStyle.durationLargeStyle(),
                              ),
                              Text(
                                ":",
                                style: AppTextStyle.durationLargeStyle(),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Hours",
                          style: AppTextStyle.bodySmall(fontSize: 14),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 45.h,
                          child: Text(
                            duration.inMinutes
                                .remainder(60)
                                .toString()
                                .padLeft(2, '0'),
                            style: AppTextStyle.durationLargeStyle(),
                          ),
                        ),
                        Text(
                          "Minutes",
                          style: AppTextStyle.bodySmall(fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
                Image(
                  image: const AssetImage(
                    AppImages.falcon9,
                  ),
                  height: 400.h,
                ),
                AppComponent.customInkWell(
                    child: SvgPicture.asset(
                      AppImages.doubleDownArrow,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, Routes.home);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
