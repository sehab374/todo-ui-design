import 'dart:ui';

import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryLight = Color(0xff5D9CEC);

  static Color backgroundLight = Color(0xffDFECDB);
  static Color backgroundDark = Color(0xff060E1E);
  static Color greenLight = Color(0xff61E757);
  static Color whiteColor = Color(0xffFFFFFF);
  static Color blackColor = Color(0xff383838);

  static Color redColor = Color(0xffEC4B4B);

  static Color grayColor = Color(0xffc8c9cb);
  static Color darkBlackColor = Color(0xff141922);

////////////////////////////////////////////dark colors

  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryLight,
      scaffoldBackgroundColor: backgroundLight,
      appBarTheme: AppBarTheme(color: primaryLight),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: primaryLight),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: primaryLight,
          unselectedItemColor: grayColor,
          showSelectedLabels: false,
          showUnselectedLabels: false),
      bottomSheetTheme: BottomSheetThemeData(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15)))),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: whiteColor),
          titleMedium: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: blackColor),
          titleSmall: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: blackColor)));
}
