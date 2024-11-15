import 'package:flutter/material.dart';
import 'package:social_app/constants/styles.dart';
import 'package:social_app/screens/welcome_screen.dart';

class MButton extends StatelessWidget {
  final String text;

  const MButton({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double borderRadius = 15;

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        gradient: AppButtonStyles.buttonGradient, // Use centralized gradient
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 75, vertical: 15)),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Welcome()),
          );
        },
        child: Text(
          text,
          style: AppButtonStyles.buttonText, // Use centralized button text style
        ),
      ),
    );
  }
}
