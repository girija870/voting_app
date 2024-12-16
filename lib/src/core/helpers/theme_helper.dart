import 'package:flutter/material.dart';
import 'package:voting_app/src/core/themes/themes.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.kColorPrimary,
    scaffoldBackgroundColor: AppColors.kColorWhite,
    appBarTheme: AppBarTheme(
      titleTextStyle: AppStyles.semiBoldText24.copyWith(
        color: AppColors.kColorActive,
      ),
      surfaceTintColor: Colors.transparent,
    ),
  );
}
