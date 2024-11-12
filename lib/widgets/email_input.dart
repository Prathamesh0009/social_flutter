import 'package:flutter/material.dart';
import 'package:social_app/constants/styles.dart';

class EmailInputField extends StatelessWidget {
  const EmailInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(
        onChanged: (value) {
          // Handle input change
        },
        keyboardType: TextInputType.emailAddress,
        style: AppTextStyles.bodyText, // Use centralized text style
        decoration: AppInputStyles.emailInputDecoration, // Use centralized input decoration
      ),
    );
  }
}
