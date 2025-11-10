import 'package:flutter/material.dart';
import 'package:madshop_ui_dmitriev/theme/app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static const TextStyle headlineLarge = TextStyle(
    fontSize: 50,
    fontWeight: FontWeight.bold,
    color: AppColors.textBlack,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.textBlack,
  );

  static const TextStyle contextLarge = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.textBlack,
  );

  static const TextStyle contextMedium = TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.normal,
    color: AppColors.textBlack,
  );

  static const TextStyle contextMediumSmall = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: AppColors.textBlack,
  );

  static const TextStyle contextMediumSmallBold = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: AppColors.textBlack,
  );

  static const TextStyle contextSmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.textBlack,
  );

  static const TextStyle inputSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.textBlack,
  );

  static const TextStyle inputSmallPlaceholder = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.onGrayPlaceholder,
  );

  static const TextStyle buttonMedium = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.normal,
    color: AppColors.textWhite,
  );
}