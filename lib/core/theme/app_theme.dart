import 'package:flutter/material.dart';

class UAppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      colorSchemeSeed: Colors.blue, // Color principal de tu tienda
      brightness: Brightness.light,
      useMaterial3: true,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      colorSchemeSeed: Colors.blue,
      brightness: Brightness.dark,
      useMaterial3: true,
    );
  }
}
