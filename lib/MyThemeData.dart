import 'package:flutter/material.dart';

class MyThemeData{
  static var color1=const Color(0xFF27292c);
  static var color2=const Color(0xff60f5b1);
  static var color3 = const Color(0xff151716);


  static ThemeData Themee = ThemeData(
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      headline2: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 50,
      ),
      headline3: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
  );
}