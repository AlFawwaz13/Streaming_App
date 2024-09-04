import 'package:flutter/material.dart';
import 'theme_manager.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData _themeData = lightMode;

  ThemeData get themeData =>_themeData;

  bool get isDarkMode => themeData == darkMode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }
  void toogleTheme(){
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else{
      themeData = lightMode;
    }
  }
}