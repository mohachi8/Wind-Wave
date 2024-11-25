import 'package:flutter/material.dart';

class AppTheme {
  // ライトテーマ
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: Colors.white,
      surfaceTintColor: Colors.black,
    ),
  );

  // ダークテーマ
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: Colors.white,
      surfaceTintColor: Colors.black,
    ),
  );
}
