import 'package:flutter/material.dart';

class AppSpaces {
  static double responsiveBackgroundHeight(BuildContext context) {
    double distance = (MediaQuery.of(context).size.height);
    return distance;
  }

  static double responsiveBackgroundWidht(BuildContext context) {
    double distance = (MediaQuery.of(context).size.width);
    return distance;
  }

  static double spaceTexts = 20;
}
