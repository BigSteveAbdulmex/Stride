import 'package:flutter/material.dart';

class AuthAppbarTheme {
  AuthAppbarTheme._();

  static const lightAuthAppbarTheme = AppBarTheme(
    // elevation:
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.white,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
  );

  static const darkAuthAppbarTheme = AppBarTheme(
    // elevation:
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.black,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
  );
}
