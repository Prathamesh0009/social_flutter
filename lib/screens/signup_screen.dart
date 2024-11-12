import 'package:flutter/material.dart';
import 'package:social_app/widgets/app_drawer.dart';
import 'package:social_app/widgets/signup_button.dart';
import 'package:social_app/widgets/email_input.dart';
import 'package:social_app/widgets/password_input.dart';
import 'package:social_app/widgets/social_widget.dart';
import 'package:social_app/constants/styles.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      drawer: SideDrawer(),
      extendBody: true,
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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 100.0),
              child: Material(
                elevation: 10,
                shadowColor: Colors.black54,
                borderRadius: BorderRadius.circular(15),
                color: AppColors.cardBackground,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 350,
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    decoration: AppButtonStyles.cardDecoration,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Get Started",
                                style: AppTextStyles.title,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "Create an account and join the community!",
                                style: AppTextStyles.subtitle,
                              ),
                            ],
                          ),
                        ),
                        AppButtonStyles.dividerStyle, // Using centralized divider style
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 7.0),
                          child: EmailInputField(),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 7.0),
                          child: PasswordInput(hintText: 'Password'),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 7.0),
                          child: PasswordInput(hintText: 'Confirm Password'),
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: MButton(text: "Create Account"),
                          ),
                        ),
                        Center(
                          child: Text(
                            "Or sign up with",
                            style: AppTextStyles.subtitle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: SocialButtons(),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text.rich(
                              TextSpan(
                                text: "Already have an account? ",
                                style: AppTextStyles.subtitle,
                                children: [
                                  TextSpan(
                                    text: "Sign in here",
                                    style: AppTextStyles.link,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
