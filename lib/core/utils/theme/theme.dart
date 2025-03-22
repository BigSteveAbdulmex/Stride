import 'package:flutter/material.dart';

import 'package:stride/core/utils/theme/custom_theme/auth_appbar_theme.dart';
import 'package:stride/core/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:stride/core/utils/theme/custom_theme/text_theme.dart';

class CustomAppTheme {
  CustomAppTheme._();

  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.red,
      brightness: Brightness.light,
    ),
    useMaterial3: true,
    appBarTheme: AuthAppbarTheme.lightAuthAppbarTheme,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "",
    brightness: Brightness.light,
    // primaryColor: Colors.blue,
    textTheme: CustomTextTheme.lightTextTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    colorSchemeSeed: Colors.green,
    useMaterial3: true,
    appBarTheme: AuthAppbarTheme.darkAuthAppbarTheme,
    scaffoldBackgroundColor: Colors.black26,
    fontFamily: "",
    brightness: Brightness.dark,
    // primaryColor: Colors.green,
    textTheme: CustomTextTheme.darkTextTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.darkElevatedButtonTheme,
  );
}
