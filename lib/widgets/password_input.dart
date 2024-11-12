import 'package:flutter/material.dart';
import 'package:social_app/constants/styles.dart';

class PasswordInput extends StatefulWidget {
  final String hintText;

  const PasswordInput({
    required this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool pwdVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextFormField(
        obscureText: !pwdVisibility,
        style: AppTextStyles.bodyText, // Use centralized text style
        decoration: AppInputStyles.passwordInputDecoration.copyWith(
          hintText: widget.hintText,
          suffixIcon: InkWell(
            onTap: () => setState(() => pwdVisibility = !pwdVisibility),
            child: Icon(
              pwdVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined,
              color: AppColors.subtitleColor.withOpacity(0.75),
              size: 18,
            ),
          ),
        ),
        validator: (val) {
          if (val!.isEmpty) {
            return 'Required';
          }
          return null;
        },
      ),
    );
  }
}
