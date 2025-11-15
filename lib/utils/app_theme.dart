import 'package:flutter/material.dart';

class AppTheme {
  // light theme
  static final light = ThemeData(
    primaryColor: const Color.fromARGB(255, 43, 59, 201),
    scaffoldBackgroundColor: const Color.fromARGB(255, 238, 236, 236),
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 107, 192, 248),
      primary: const Color.fromARGB(255, 107, 192, 248),
      brightness: Brightness.light,
      surface: Colors.white,
    ),
    cardColor: Colors.white,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Color.fromARGB(255, 43, 59, 201),
      unselectedItemColor: Colors.grey,
    ),
  );

  // dark theme
  static final dark = ThemeData(
    primaryColor: const Color.fromARGB(255, 43, 59, 201),
    scaffoldBackgroundColor: Color(0xFF121212),
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF121212),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color.fromARGB(255, 107, 192, 248),
      primary: const Color.fromARGB(255, 107, 192, 248),
      brightness: Brightness.dark,
      surface: Color(0xFF121212),
    ),
    cardColor: Color(0xFF1E1E1E),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF1E1E1E),
      selectedItemColor: Color.fromARGB(255, 43, 59, 201),
      unselectedItemColor: Colors.grey,
    ),
  );
}
