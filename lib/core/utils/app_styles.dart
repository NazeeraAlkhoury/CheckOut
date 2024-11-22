import 'package:flutter/material.dart';

abstract class AppStyles {
  //scale factor
  //Responsive font size
  //fontsize(min,max)

  static double getResponsiveFontSize(BuildContext context,
      {required double fontSize}) {
    double scaleFactor = getScaleFactor(context);

    double responsiveFontSize = fontSize * scaleFactor;

    double lowerLimit = responsiveFontSize * .8;

    double upperLimit = responsiveFontSize * 1.2;

    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static getScaleFactor(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    if (width < 600) {
      return width / 400;
    } else if (width < 900 && width >= 600) {
      return width / 700;
    } else if (width >= 900) {
      return width / 1000;
    }
  }

  static TextStyle textStyle15(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: 15,
      ),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textStyle21(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: 21,
      ),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textStyle19(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: 19,
      ),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textStyle22(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: 22,
      ),
      fontWeight: FontWeight.w500,
    );
  }
}
