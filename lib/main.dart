import 'package:flutter/material.dart';
import 'package:social_app/screens/my_account_screen.dart';
import 'package:social_app/screens/signup_screen.dart';
import 'package:social_app/screens/welcome_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      home: SignUp(),
    );
  }
}
