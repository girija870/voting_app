import 'package:flutter/material.dart';
import 'package:voting_app/src/core/themes/themes.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.kColorPrimary,
    scaffoldBackgroundColor: AppColors.kColorWhite,
    // appBarTheme: AppBarTheme(
    //   surfaceTintColor: AppColors.activeAccent,
    //   // color: AppColors.whiteColor,
    //   elevation: 0,
    //   titleTextStyle: AppStyles.text12PxMedium.appFontFamily.activeAccent.lineHeight(24),
    //   titleSpacing: 0,
    //   centerTitle: true,
    //   systemOverlayStyle: const SystemUiOverlayStyle(
    //     statusBarIconBrightness: Brightness.dark,
    //     statusBarColor: Colors.transparent,
    //   ),
    // ),
  );
}
