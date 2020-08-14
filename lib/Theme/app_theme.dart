import 'package:flutter/material.dart';

final coachAppTheme = ThemeData(
    primaryColor: Color(0xFF186064),
    accentColor: Color(0xFF3ba374),
    textTheme: TextTheme(
      // title
      headline5: TextStyle(
          color: Color(0xFF3ba374),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600),
      headline6: TextStyle(
          fontSize: 16.0,
          color: Colors.white,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600),
      // button
      button: TextStyle(
          fontSize: 18.0,
          color: Colors.white,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600),
      bodyText1:
          TextStyle(fontSize: 16.0, color: Colors.grey, fontFamily: 'Roboto'),
      bodyText2:
          TextStyle(fontSize: 16.0, color: Colors.black, fontFamily: 'Roboto'),
      // green text
      subtitle1: TextStyle(
          fontSize: 16,
          color: Color(0xFF3ba374),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600),
      subtitle2: TextStyle(
          fontSize: 24,
          color: Color(0xFF3ba374),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600),
    ),
  );