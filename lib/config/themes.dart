import 'package:flutter/material.dart';

darkTheme(context) {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.red,
    accentColor: Colors.redAccent,
    fontFamily: "GoogleSansRegular"
  );
}
lightTheme(context) {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.red,
    accentColor: Colors.redAccent,
    fontFamily: 'GoogleSansRegular',    
  );
}