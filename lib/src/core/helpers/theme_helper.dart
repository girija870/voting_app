import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.activeNormal,
    scaffoldBackgroundColor: AppColors.whiteColor,
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
