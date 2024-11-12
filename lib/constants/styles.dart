import 'package:flutter/material.dart';

class AppColors {
  // Gradient colors
  static const Color backgroundGradientTop = Color(0xFF2E8B8B);
  static const Color backgroundGradientBottom = Color(0xFF1F3838);

  // Background colors
  static const Color cardBackground = Color(0xFF15202B);
  static const Color primaryBackground = Color(0xff4338CA);

  // Primary and secondary colors
  static const Color primaryColor = Color(0xff4338CA);
  static const Color secondaryColor = Color(0xff6D28D9);

  // Text colors
  static const Color titleColor = Colors.white;
  static const Color subtitleColor = Colors.white70;
  static const Color linkColor = Colors.blueAccent;
}

class AppTextStyles {
  // Title text style
  static const TextStyle title = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.titleColor,
  );

  // Subtitle text style
  static const TextStyle subtitle = TextStyle(
    fontSize: 16,
    color: AppColors.subtitleColor,
  );

  // Link text style
  static const TextStyle link = TextStyle(
    color: AppColors.linkColor,
    fontWeight: FontWeight.bold,
  );

  // General body text style
  static const TextStyle bodyText = TextStyle(
    fontSize: 14,
    color: AppColors.subtitleColor,
  );
}

class AppInputStyles {
  static final OutlineInputBorder defaultBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.linkColor, width: 1.0),
    borderRadius: BorderRadius.circular(10.0),
  );

  static final OutlineInputBorder errorBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 1.0),
    borderRadius: BorderRadius.circular(10.0),
  );

  static final InputDecoration emailInputDecoration = InputDecoration(
    prefixIcon: Icon(Icons.email, color: AppColors.subtitleColor),
    filled: true,
    fillColor: AppColors.cardBackground,
    hintText: 'Enter your email',
    hintStyle: AppTextStyles.bodyText.copyWith(
      color: AppColors.subtitleColor.withOpacity(0.75),
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
    border: defaultBorder,
    focusedBorder: defaultBorder,
    enabledBorder: defaultBorder,
    errorBorder: errorBorder,
  );

  static final InputDecoration passwordInputDecoration = InputDecoration(
    prefixIcon: Icon(Icons.lock, color: AppColors.subtitleColor),
    filled: true,
    fillColor: AppColors.cardBackground,
    hintText: 'Enter your password',
    hintStyle: AppTextStyles.bodyText.copyWith(
      color: AppColors.subtitleColor.withOpacity(0.75),
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
    border: defaultBorder,
    focusedBorder: defaultBorder,
    enabledBorder: defaultBorder,
    errorBorder: errorBorder,
  );
}

class AppButtonStyles {
  static const LinearGradient buttonGradient = LinearGradient(
    colors: [AppColors.primaryColor, AppColors.secondaryColor],
  );

  static const TextStyle buttonText = TextStyle(
    color: AppColors.titleColor,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static final BoxDecoration socialButtonDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: Colors.white,
  );

  static const TextStyle socialButtonText = TextStyle(
    color: Colors.black,
    fontSize: 16,
  );

  static final BoxDecoration cardDecoration = BoxDecoration(
    color: AppColors.cardBackground,
    borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
        color: Colors.black54,
        offset: Offset(0, 4),
        blurRadius: 8,
      ),
    ],
  );

  static const Divider dividerStyle = Divider(
    height: 1,
    color: Colors.white70,
    thickness: 0.5,
  );
}

class AppDrawerStyles {
  static const Color drawerBackgroundColor = AppColors.backgroundGradientTop;

  static const BoxDecoration profileImageDecoration = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(14)),
    image: DecorationImage(
      image: NetworkImage("https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
      fit: BoxFit.cover,
    ),
  );

  static const TextStyle profileNameTextStyle = TextStyle(
    color: Colors.white,
  );

  static const TextStyle profileSubtitleTextStyle = TextStyle(
    color: Colors.white70,
  );

  static const TextStyle menuItemTextStyle = TextStyle(
    color: Colors.white,
  );

  static const Color menuItemIconColor = Colors.white;
}
