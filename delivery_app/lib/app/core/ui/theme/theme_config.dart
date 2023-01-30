import 'package:delivery_app/app/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../styles/app_styles.dart';
import '../styles/colors_app.dart';

class ThemeConfig {
  ThemeConfig._();

  static final _defaultInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(7),
      borderSide: BorderSide(color: Colors.grey[400]!));

  static final theme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    primaryColor: ColorsApp.ins.primary,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsApp.ins.primary,
      primary: ColorsApp.ins.primary,
      secondary: ColorsApp.ins.secondary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: AppStyles.ins.primaryButton,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      isDense: true,
      contentPadding: EdgeInsets.all(13),
      border: _defaultInputBorder,
      enabledBorder: _defaultInputBorder,
      focusedBorder: _defaultInputBorder,
      labelStyle: TextStyles.ins.textRegular.copyWith(color: Colors.black),
      errorStyle: TextStyles.ins.textRegular.copyWith(color: Colors.red)
    ),
  );
}
// border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(7),
//           borderSide: BorderSide(color: Colors.grey[400]!)),