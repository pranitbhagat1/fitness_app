
import 'package:fitness/presentation/theme/app_colors.dart';
import 'package:fitness/presentation/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData.light(
    useMaterial3: false,
  ).copyWith(
    primaryColor: AppColors.primaryViolet,
    splashColor: AppColors.primaryViolet.withOpacity(0.5),
    textTheme: AppTextStyles.textTheme,
    primaryTextTheme: AppTextStyles.textTheme,
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.all<Color>(AppColors.primaryViolet),
    ),
    sliderTheme: const SliderThemeData(
      activeTrackColor: AppColors.secondaryVioletHover,
      inactiveTrackColor: Color(0xFFFFE3A4),
      thumbColor: AppColors.secondaryVioletHover,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding:
      EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
      errorMaxLines: 2,
      errorStyle: TextStyle(
        color: AppColors.errorRed,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.errorRed,
          width: 1.0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.errorRed,
          width: 1.0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      floatingLabelStyle: TextStyle(
        color: AppColors.mainBlack,
        fontWeight: FontWeight.w600,
      ),
      labelStyle: TextStyle(
        color: AppColors.mainBlack,
        fontWeight: FontWeight.w600,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      filled: true,
      fillColor: AppColors.lightGrey,
    ),
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: AppTextStyles.textTheme.titleLarge?.copyWith(
        color: AppColors.mainBlack,
      ),
      iconTheme: const IconThemeData(
        color: AppColors.mainBlack,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        side: WidgetStateProperty.all(
          const BorderSide(
            color: AppColors.secondaryViolet,
            width: 1.5,
          ),
        ),
        minimumSize: WidgetStateProperty.all(
          const Size(300, 50),
        ),
        foregroundColor: WidgetStateProperty.all(
          AppColors.secondaryViolet,
        ),
        textStyle: WidgetStateProperty.all(
          AppTextStyles.textTheme.labelLarge,
        ),
        shape: WidgetStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(43),
            ),
          ),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(
          const Size(300, 50),
        ),
        maximumSize: WidgetStateProperty.all(
          const Size(400, 50),
        ),
        backgroundColor: WidgetStateProperty.resolveWith(
              (states) {
            if (states.contains(WidgetState.disabled)) {
              return AppColors.secondaryViolet.withOpacity(0.5);
            } else {
              return AppColors.secondaryViolet;
            }
          },
        ),
        foregroundColor: WidgetStateProperty.all(
          Colors.white,
        ),
        textStyle: WidgetStateProperty.all(
          AppTextStyles.textTheme.labelLarge?.copyWith(color: Colors.white),
        ),
        shape: WidgetStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(43),
            ),
          ),
        ),
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: AppColors.primaryBlue,
      unselectedLabelColor: AppColors.mainBlack,
      labelStyle: AppTextStyles.textTheme.labelLarge,
      unselectedLabelStyle: AppTextStyles.textTheme.labelLarge,
    ),
  );

  static ThemeData darkTheme(BuildContext context) => ThemeData.dark(
    useMaterial3: false,
  ).copyWith(
    textTheme: AppTextStyles.textTheme.apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.grey.shade900,
    brightness: Brightness.dark,
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      labelStyle: TextStyle(),
    ),
    cardTheme: CardTheme(
      color: Colors.grey.shade800,
    ),
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      titleTextStyle: AppTextStyles.textTheme.titleLarge?.copyWith(
        color: Colors.white,
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: AppColors.primaryBlue,
      unselectedLabelColor: Colors.white,
      labelStyle: AppTextStyles.textTheme.labelLarge,
      unselectedLabelStyle: AppTextStyles.textTheme.labelLarge,
    ),
  );
}