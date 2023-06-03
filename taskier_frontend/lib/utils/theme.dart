import 'package:flutter/material.dart';
import 'package:taskier/utils/colors.dart';
import 'package:taskier/utils/constants.dart';
import 'package:taskier/utils/styles.dart';

class AppTheme {
  AppTheme._();

  // static final darkTheme = ThemeData(
  //   fontFamily: Constants.appFont,
  //   useMaterial3: true,
  //   colorScheme: const ColorScheme.dark(
  //     background: ColorPalette.darkBackground,
  //     brightness: Brightness.dark,
  //     primary: ColorPalette.purple,
  //     secondary: ColorPalette.darkPurple,
  //     tertiary: ColorPalette.lightPurple,
  //   ),
  //   scaffoldBackgroundColor: ColorPalette.darkBackground,
  //   appBarTheme: AppBarTheme(
  //     backgroundColor: ColorPalette.darkBackground,
  //     titleTextStyle: Styles.appbarStyle(
  //       color: ColorPalette.white,
  //     ),
  //   ),
  // );

  static final lightTheme = ThemeData(
    fontFamily: Constants.appFont,
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      background: ColorPalette.bgGrey,
      brightness: Brightness.light,
      primary: ColorPalette.primary,
      secondary: ColorPalette.lightGrey,
    ),
    scaffoldBackgroundColor: ColorPalette.bgGrey,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorPalette.bgGrey,
      titleTextStyle: Styles.appbarStyle(
        color: ColorPalette.black,
      ),
    ),
  );
}
