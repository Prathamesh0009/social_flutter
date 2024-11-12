import 'package:flutter/material.dart';
import 'package:social_app/constants/styles.dart';
import 'package:social_app/screens/my_account_screen.dart';
import 'package:social_app/services/profile_service.dart';

class SideDrawer extends StatelessWidget {
  final ProfileService _profileService = ProfileService();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: AppDrawerStyles.drawerBackgroundColor, // Use centralized color
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  // Profile ListTile
                  ListTile(
                    leading: Container(
                      width: 50,
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          decoration: AppDrawerStyles.profileImageDecoration, // Use centralized decoration
                        ),
                      ),
                    ),
                    title: const Text(
                      "Micelle Johnathan",
                      style: AppDrawerStyles.profileNameTextStyle, // Use centralized text style
                    ),
                    subtitle: const Text(
                      "@Micelle_NYC",
                      style: AppDrawerStyles.profileSubtitleTextStyle, // Use centralized text style
                    ),
                  ),
                  const SizedBox(height: 12),
                  MenuItem(
                    text: 'My Account',
                    icon: Icons.people,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 5),
                  MenuItem(
                    text: 'Liked Photos',
                    icon: Icons.favorite_border,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 5),
                  MenuItem(
                    text: 'Posts',
                    icon: Icons.workspaces_outline,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 5),
                  MenuItem(
                    text: 'Archives',
                    icon: Icons.update,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 8),
                  const Divider(color: Colors.white70),
                  const SizedBox(height: 8),
                  MenuItem(
                    text: 'Notifications',
                    icon: Icons.notifications_outlined,
                    onClicked: () => selectedItem(context, 5),
                  ),
                  MenuItem(
                    text: 'Settings',
                    icon: Icons.settings,
                    onClicked: () => selectedItem(context, 6),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void selectedItem(BuildContext context, int index) async {
    debugPrint("selectedItem called with index: $index");
    
    Navigator.of(context).pop();

    if (index == 0) {
      debugPrint("Navigating to My Account");

      try {
        final data = await _profileService.fetchProfileData();
        debugPrint("Profile data received app drawer: $data");

        if (context.mounted) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MyAccount(profileData: data),
          ));
        }
      } catch (error) {
        debugPrint("Error occurred during API call: $error");
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('An error occurred while fetching data')),
          );
        }
      }
    } else if (index == 1) {
      debugPrint("Navigating to Liked Photos page");
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => Scaffold()), // Replace with actual page
      );
    }
  }

  Future<void> fetchProfileData(BuildContext context) async {
    try {
      final data = await _profileService.fetchProfileData();

      debugPrint("Profile data received: $data");

      if (context.mounted) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MyAccount(profileData: data),
        ));
      }
    } catch (error) {
      debugPrint("Error occurred during API call: $error");
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('An error occurred while fetching data')),
        );
      }
    }
  }
}

class MenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onClicked;

  const MenuItem({
    required this.text,
    required this.icon,
    this.onClicked,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: AppDrawerStyles.menuItemIconColor), // Use centralized color
      title: Text(text, style: AppDrawerStyles.menuItemTextStyle), // Use centralized text style
      hoverColor: Colors.white70,
      onTap: onClicked,
    );
  }
}
