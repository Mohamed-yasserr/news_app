import 'dart:ui';

import 'package:flutter/material.dart';

class MyTheme{

  static const Color primaryLightColor =Color(0xFF39A552);
  static const Color redColor =Color(0xFFC91C22);
  static const Color darkBlueColor =Color(0xFF003E90);
  static const Color pinkColor =Color(0xFFED1E79);
  static const Color brownColor =Color(0xFFCF7E48);
  static const Color blueColor =Color(0xFF4882CF);
  static const Color yellowColor =Color(0xFFF2D352);
  static const Color greyColor =Color(0xFF4F5A69);
  static const Color blackColor =Color(0xFF303030);
  static const Color whiteColor =Color(0xFFFFFFFF);

  static final ThemeData lightTheme=ThemeData(
    primaryColor: primaryLightColor,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryLightColor,
          centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),

        )
      )

    ),
    scaffoldBackgroundColor: Colors.transparent
  );
}