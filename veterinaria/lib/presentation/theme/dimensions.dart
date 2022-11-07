import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class Dimensions {
  late double screenWidth, screenHeight;

  double get width => screenWidth;
  double get height => screenHeight;

  Dimensions(BuildContext context) {
    final size = MediaQuery.of(context).size;
    screenWidth = size.width;
    screenHeight = size.height;
  }

  //dynamic height padding and margin
  double height10(double) => screenHeight / 84.4;
  // static double height15 = screenHeight / 56.27;
  // static double height20 = screenHeight / 42.2;
  // static double height30 = screenHeight / 28.13;
  // static double height45 = screenHeight / 18.13;
  // static double height60 = screenHeight / 14.07;

  // //radius

  // static double radius15 = screenHeight / 56.27;
  // static double radius20 = screenHeight / 42.2;
  // static double radius30 = screenHeight / 29.13;

}

// import 'dart:math' as math;

// import 'package:flutter/material.dart';

// class Responsive {
//   late double _width, _height, _diagonal, _paddingTop;

//   double get width => _width;
//   double get height => _height;
//   double get diagonal => _diagonal;
//   double get paddingTop => _paddingTop;

//   // static Responsive of(BuildContext context) => Responsive(context);

//   Responsive(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     _width = size.width;
//     _height = size.height;
//     _diagonal = math.sqrt(math.pow(_width, 2) + math.pow(_height, 2));
//     _paddingTop = MediaQuery.of(context).padding.top;
//   }

//   //?Is Mobile
//   bool get isMobile => _width < 800;

//   //?Is Desktop
//   bool get isDesktop => _width >= 800;

//   double wp(double percent) => _width * percent / 100;
//   double hp(double percent) => _height * percent / 100;
//   double dp(double percent) => _diagonal * percent / 100;
// }