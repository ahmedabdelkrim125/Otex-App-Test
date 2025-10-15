// import 'dart:developer';

import 'package:flutter/material.dart';

class AppDimensions {
  static late double screenWidth;
  static late double screenHeight;

  static void init(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    screenWidth = mediaQuery.size.width;
    screenHeight = mediaQuery.size.height;
  }
    //  log('Screen Dimensions Initialized: Width = $screenWidth, Height = $screenHeight');
}
