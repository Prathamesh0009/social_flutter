import 'package:flutter/material.dart';
import 'package:social_app/constants/styles.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Google Button
        Container(
          height: 45,
          margin: const EdgeInsets.all(10),
          decoration: AppButtonStyles.socialButtonDecoration, // Use centralized decoration
          child: TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            onPressed: null, // Adjust this based on functionality
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/crypto%2Fsearch%20(2).png?alt=media&token=24a918f7-3564-4290-b7e4-08ff54b3c94c",
                  width: 20,
                ),
                const SizedBox(width: 10),
                Text(
                  "Google",
                  style: AppButtonStyles.socialButtonText, // Use centralized text style
                ),
              ],
            ),
          ),
        ),

        // Facebook Button
        Container(
          height: 45,
          margin: const EdgeInsets.all(10),
          decoration: AppButtonStyles.socialButtonDecoration, // Use centralized decoration
          child: TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            onPressed: null, // Adjust this based on functionality
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/crypto%2Ffacebook%20(2).png?alt=media&token=9c275bf0-2bf7-498a-9405-9ae99df8d8f2",
                  width: 20,
                ),
                const SizedBox(width: 10),
                Text(
                  "Facebook",
                  style: AppButtonStyles.socialButtonText, // Use centralized text style
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
