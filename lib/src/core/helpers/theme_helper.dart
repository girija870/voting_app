import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';


ThemeData getApplicationTheme() {
  return ThemeData(
    primaryColor: AppColors.activeNormal,
    scaffoldBackgroundColor: AppColors.whiteColor,
    appBarTheme: AppBarTheme(
      surfaceTintColor: AppColors.whiteColor,
      color: AppColors.whiteColor,
      elevation: 0,
      titleTextStyle: AppStyles.text12PxMedium.appFontFamily.lineHeight(24),
      titleSpacing: 0,
      centerTitle: true,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    ),
  );
}
