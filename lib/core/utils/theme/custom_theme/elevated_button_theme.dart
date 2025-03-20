import 'package:flutter/material.dart';

class CustomElevatedButtonTheme {
  CustomElevatedButtonTheme._();

  //Light elevated button theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      // elevation: ,
      foregroundColor: Colors.black,
      disabledForegroundColor: Colors.grey,
      backgroundColor: Color(0xFFCFFF45),
      disabledBackgroundColor: Colors.grey,
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 120,
        vertical: 16,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
  );

  // Dark elevated button theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      // elevation: ,
      foregroundColor: Colors.black,
      disabledForegroundColor: Colors.grey,
      backgroundColor: Color(0xFFCFFF45),
      disabledBackgroundColor: Colors.grey,
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 120,
        vertical: 16,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
  );
}
