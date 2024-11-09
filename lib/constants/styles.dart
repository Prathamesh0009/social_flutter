import 'package:flutter/material.dart';

class AppColors {
  static const Color backgroundGradientTop = Color(0xFF2E8B8B);
  static const Color backgroundGradientBottom = Color(0xFF1F3838);
  static const Color cardBackground = Color(0xFF15202B);
  static const Color primaryBackground = Color(0xff4338CA);
  static const Color titleColor = Colors.white;
  static const Color subtitleColor = Colors.white70;
  static const Color linkColor = Colors.blueAccent;
}

class AppTextStyles {
  static const TextStyle title = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.titleColor,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 16,
    color: AppColors.subtitleColor,
  );

  static const TextStyle link = TextStyle(
    color: AppColors.linkColor,
    fontWeight: FontWeight.bold,
  );
}
