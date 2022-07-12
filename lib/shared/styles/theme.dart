import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

final ThemeData lightTheme = ThemeData(
  fontFamily: 'Poppins',
  scaffoldBackgroundColor: kWhiteColor,
  primaryColor: kPrimaryLightColor,
  canvasColor: kPrimaryLightTextColor,
  iconTheme: const IconThemeData(color: kPrimaryLightTextColor),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: kWhiteColor,
    iconTheme: IconThemeData(color: kPrimaryLightTextColor),
    toolbarTextStyle: TextStyle(
      color: kPrimaryLightTextColor,
      fontFamily: 'Poppins',
    ),
    titleTextStyle: TextStyle(
      color: kPrimaryLightTextColor,
      fontFamily: 'Poppins',
    ),
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: InputBorder.none,
    filled: true,
    enabledBorder: inputBorder,
    disabledBorder: inputBorder,
    focusedBorder: inputBorder,
    errorBorder: inputBorder,
    focusedErrorBorder: inputBorder,
    hintStyle: TextStyle(
      fontSize: 16,
      color: kSecondaryLightTextColor,
    ),
  ),
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      color: kPrimaryLightTextColor,
      fontSize: 24,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    ),
    labelMedium: TextStyle(
      color: kSecondaryLightTextColor,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    ),
    labelLarge: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 14,
      color: kPrimaryLightTextColor,
    ),
  ),
);

final ThemeData darkTheme = ThemeData(
  fontFamily: 'Poppins',
  scaffoldBackgroundColor: kScaffoldDarkColor,
  primaryColor: kPrimaryDarkColor,
  canvasColor: kPrimaryDarkTextColor,
  iconTheme: const IconThemeData(color: kPrimaryDarkTextColor),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: kScaffoldDarkColor,
    iconTheme: IconThemeData(color: kPrimaryDarkTextColor),
    toolbarTextStyle: TextStyle(
      color: kPrimaryDarkTextColor,
      fontFamily: 'Poppins',
    ),
    titleTextStyle: TextStyle(
      color: kPrimaryDarkTextColor,
      fontFamily: 'Poppins',
    ),
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: InputBorder.none,
    filled: true,
    fillColor: kWhiteColor,
    enabledBorder: inputBorder,
    disabledBorder: inputBorder,
    focusedBorder: inputBorder,
    errorBorder: inputBorder,
    focusedErrorBorder: inputBorder,
    hintStyle: TextStyle(
      fontSize: 16,
      color: kSecondaryDarkTextColor,
    ),
  ),
  textTheme: TextTheme(
    titleMedium: const TextStyle(
      color: kPrimaryDarkTextColor,
      fontSize: 24,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    ),
    labelMedium: TextStyle(
      color: kPrimaryDarkTextColor.withOpacity(0.7),
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    ),
    labelLarge: const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 14,
      color: kPrimaryDarkTextColor,
    ),
  ),
);

const inputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(20)),
  borderSide: BorderSide(color: Colors.transparent),
);
