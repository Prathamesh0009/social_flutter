import 'package:flutter/material.dart';
import 'package:social_app/constants/styles.dart';
import 'package:social_app/screens/my_account_screen.dart';
import 'package:social_app/services/profile_api.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: AppColors.backgroundGradientTop,
        child: ListView(
          children: <Widget>[
            // Drawer content and other ListTiles
            ListTile(
              title: const Text(
                "My Account",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(Icons.people, color: Colors.white),
              onTap: () => selectedItem(context, 0),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> selectedItem(BuildContext context, int index) async {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        // Fetch data from API
        final profileData = await UserProfileApi.fetchProfileData();

        // Navigate to ProfilePage, passing the data
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MyAccount(profileData: profileData),
          ),
        );
        break;
    }
  }
}
