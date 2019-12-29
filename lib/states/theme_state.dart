import 'package:flutter/material.dart';

class ThemeState with ChangeNotifier{
  ThemeState();

  //false: light, true: dark
  bool _isDarkModeOn=false;

  void changeThemeMode(){
    this._isDarkModeOn=!this._isDarkModeOn;
    notifyListeners();
  }

  bool get getThemeMode => this._isDarkModeOn;
}