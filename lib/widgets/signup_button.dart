import 'package:flutter/material.dart';
import 'package:social_app/screens/welcome_screen.dart';
// Import the Welcome page file

class MButton extends StatelessWidget {
  final String text;

  const MButton({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff4338CA);
    const secondaryColor = Color(0xff6D28D9);
    const accentColor = Color(0xffffffff);
   
    const double borderRadius = 15;

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        gradient: const LinearGradient(colors: [primaryColor, secondaryColor]),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(const EdgeInsets.only(
            right: 75, left: 75, top: 15, bottom: 15)),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
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
          style: const TextStyle(color: accentColor, fontSize: 16),
        ),
      ),
    );
  }
}
