import 'package:flutter/material.dart';
import 'package:streaming_app/data_control/app_utilitydata.dart';

ThemeData lightMode = ThemeData(
  fontFamily: "Roboto",
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: AppUtility.AppBaseColorLight,
    secondary: AppUtility.AppSeccColorLight,
    primary: AppUtility.AppBaseColorDark,
  )
);

ThemeData darkMode = ThemeData(
    fontFamily: "Roboto",
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      background: AppUtility.AppSeccColorDark,
      secondary: AppUtility.AppBaseColorDark,
      primary: AppUtility.AppBaseColorLight,
)
);



