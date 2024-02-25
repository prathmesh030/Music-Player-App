import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MusicPlayerTheme {
  static ThemeData themeData = ThemeData(
    fontFamily: 'Gilroy',
    primaryColor: const Color(0xff232E78),
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    colorScheme: ThemeData().colorScheme.copyWith(
        primary: const Color(0xff091227),
        secondary: const Color(0xffEAF0FF),
        onSecondary: const Color(0xffDFE8FF),
        primaryContainer: const Color(0xffDBE6FF)),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
        fontFamily: 'Gilroy',
      ),
      bodyMedium: TextStyle(
        fontSize: 17.sp,
        fontWeight: FontWeight.w500,
        fontFamily: 'Gilroy',
      ),
      bodySmall: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        fontFamily: 'Gilroy',
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
    ),
  );
}
