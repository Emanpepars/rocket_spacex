import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static TextStyle bodyTitle() => TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 35.sp,
      );

  static TextStyle durationLargeStyle() => TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 45.sp,
  );
  static TextStyle durationSmallStyle() => TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 35.sp,
  );

  static TextStyle bodySmall({double fontSize = 18}) => TextStyle(
        color: Colors.white70,
        fontSize: fontSize.sp,
      );

  static TextStyle textStyle14white() => TextStyle(
      color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w500);
}
