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
        style: const TextStyle(fontSize: 14, color: AppColors.subtitleColor),
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.lock,
            color: AppColors.subtitleColor,
          ),
          filled: true,
          fillColor: AppColors.cardBackground,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: AppColors.subtitleColor.withOpacity(.75)),
          contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
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
          suffixIcon: InkWell(
            onTap: () => setState(() => pwdVisibility = !pwdVisibility),
            child: Icon(
              pwdVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined,
              color: AppColors.subtitleColor.withOpacity(.75),
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
