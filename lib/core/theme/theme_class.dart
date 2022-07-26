import 'package:flutter/material.dart';
import 'package:weather/core/constants/colors.dart';

class AppTheme{

  static ThemeData lightTheme = ThemeData(

    fontFamily: 'Montserrat',

    scaffoldBackgroundColor: mainColor,

    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0
    ),

    textTheme: const TextTheme(
      headline1: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 35,
      ),
      headline2: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 25,
      ),
      headline3: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 50,
      ),
      bodyText1: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      button: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: mainColor
      )
    )

  );

  static ThemeData darkTheme = ThemeData(



  );

}