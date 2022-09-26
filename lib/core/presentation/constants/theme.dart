import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import 'constants.dart';

ThemeData theme(BuildContext context) {
  return ThemeData.from(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: customMaterialColor(ColorStyle.primaryColor),
    ),
  ).copyWith(
    primaryColor: ColorStyle.primaryColor,
    dialogBackgroundColor: Colors.white,
    textTheme: GoogleFonts.latoTextTheme(),
    indicatorColor: Colors.white,
    appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
        ),
        color: ColorStyle.primaryColor),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: ColorStyle.primaryColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
        elevation: 0,
        minimumSize: Size(context.screenWidth, 40.h),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          color: ColorStyle.primaryColor,
          width: 1,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
        fixedSize: Size(context.screenWidth, 40.h),
        elevation: 0,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 14),
      hintStyle: TextStyle(
        color: Color(0xFFC4C4C4),
      ),
      suffixIconColor: Color(0xFFC4C4C4),
    ),
  );
}
