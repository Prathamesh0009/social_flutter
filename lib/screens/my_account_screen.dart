import 'package:flutter/material.dart';
import 'package:social_app/constants/styles.dart';
import 'package:social_app/widgets/app_drawer.dart';
import 'package:social_app/widgets/profile_card.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.backgroundGradientTop,
        title: const Text("Social"),
      ),
      drawer: SideDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.backgroundGradientTop,
              AppColors.backgroundGradientBottom,
            ],
          ),
        ),
        child: Center(
          child: Material(
            elevation: 10,
            shadowColor: Colors.black54,
            borderRadius: BorderRadius.circular(15),
            color: AppColors.cardBackground,
            child: Container(
              width: 350,
              padding: const EdgeInsets.all(20.0),
              child: ProfileContent(), // ProfileContent with new styling
            ),
          ),
        ),
      ),
    );
  }
}
