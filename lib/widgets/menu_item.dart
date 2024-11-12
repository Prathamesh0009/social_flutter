import 'package:flutter/material.dart';
import 'package:social_app/constants/styles.dart';

class MenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final String value;

  const MenuItem({
    required this.text,
    required this.icon,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("Building MenuItem: $text with value $value");

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: AppColors.titleColor, size: 28),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              text,
              style: AppTextStyles.subtitle,
            ),
          ),
          Text(
            value,
            style: AppTextStyles.bodyText,
          ),
        ],
      ),
    );
  }
}
