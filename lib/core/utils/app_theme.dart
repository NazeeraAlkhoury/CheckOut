import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    // titleTextStyle: AppStyles.textStyle22(context),
  ),
  // textTheme: TextTheme(
  //   headline5: TextStyle(
  //     fontSize: 15.sp,
  //     fontWeight: FontWeight.w400,
  //     color: Colors.black,
  //   ),
  //   headline4: TextStyle(
  //     fontSize: 21.sp,
  //     fontWeight: FontWeight.w600,
  //     color: Colors.black,
  //   ),
  //   button: TextStyle(
  //     fontSize: 19.sp,
  //     fontWeight: FontWeight.w500,
  //     color: Colors.black,
  //   ),
  // ),
  dividerTheme: const DividerThemeData(thickness: 1, space: 25),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      // fixedSize: Size(double.infinity, 40.h),
      minimumSize: const Size(double.infinity, 47),
      //padding: EdgeInsets.symmetric(vertical: 15.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13),
      ),
      backgroundColor: Colors.green,
    ),
  ),
);
