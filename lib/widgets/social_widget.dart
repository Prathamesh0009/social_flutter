//social widget


import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  // final Function() onGooglePressed;
  // final Function() onFacebookPressed;

  const SocialButtons({
    // required this.onGooglePressed,
    // required this.onFacebookPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Google Button
        Container(
          height: 45,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/crypto%2Fsearch%20(2).png?alt=media&token=24a918f7-3564-4290-b7e4-08ff54b3c94c",
                  width: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("Google", style: TextStyle(color: Colors.black, fontSize: 16)),
              ],
            ),
            onPressed: null,
          ),
        ),

        // Facebook Button
        Container(
          height: 45,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/crypto%2Ffacebook%20(2).png?alt=media&token=9c275bf0-2bf7-498a-9405-9ae99df8d8f2",
                  width: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("Facebook", style: TextStyle(color: Colors.black, fontSize: 16)),
              ],
            ),
            onPressed: null,
          ),
        ),
      ],
    );
  }
}
