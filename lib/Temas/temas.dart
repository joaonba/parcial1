import 'package:flutter/material.dart';

class AppTemas{
  static const Color primary = Color.fromARGB(255, 9, 197, 138);
  static final lightTheme = ThemeData.light().copyWith(
    //Color primario
    primaryColor: const Color.fromARGB(255, 226, 64, 255),
    //tema del AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      elevation: 10
    )
  );
}