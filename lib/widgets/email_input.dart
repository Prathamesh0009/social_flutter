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
        style: const TextStyle(fontSize: 14, color: AppColors.subtitleColor),
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.email, color: AppColors.subtitleColor),
          filled: true,
          fillColor: AppColors.cardBackground,
          hintText: 'Enter your email',
          hintStyle: TextStyle(color: AppColors.subtitleColor.withOpacity(.75)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.linkColor, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.linkColor, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.linkColor, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      ),
    );
  }
}
