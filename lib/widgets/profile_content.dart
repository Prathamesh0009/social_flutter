import 'package:flutter/material.dart';
import 'package:social_app/constants/styles.dart';

class ProfileContent extends StatefulWidget {
  final Map<String, dynamic> profileData;

  const ProfileContent({Key? key, required this.profileData}) : super(key: key);

  @override
  _ProfileContentState createState() => _ProfileContentState();
}

class _ProfileContentState extends State<ProfileContent> {
  @override
  Widget build(BuildContext context) {
    // Access profile data directly from the widget
    final data = widget.profileData; // Use widget to access passed profileData

    // Debugging: log profile data
    debugPrint("Profile data received: $data");

    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          // Profile Header with dynamic data
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      data['image'] ?? 
                          "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg", // Default image URL
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data['name'] ?? "Name Not Available",
                    style: const TextStyle(
                      color: AppColors.titleColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    data['description'] ?? "No description available",
                    style: const TextStyle(
                      color: AppColors.subtitleColor,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Menu Section as Vertical List with Values
          Container(
            decoration: BoxDecoration(
              color: AppColors.cardBackground.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                MenuItem(
                  text: 'Followers',
                  icon: Icons.people,
                  value: data['followers']?.toString() ?? '0',
                ),
                const Divider(color: AppColors.subtitleColor, thickness: 0.5),
                MenuItem(
                  text: 'Following',
                  icon: Icons.person_add,
                  value: data['following']?.toString() ?? '0',
                ),
                const Divider(color: AppColors.subtitleColor, thickness: 0.5),
                MenuItem(
                  text: 'Customers',
                  icon: Icons.people_outline,
                  value: data['customers']?.toString() ?? '0',
                ),
                const Divider(color: AppColors.subtitleColor, thickness: 0.5),
                MenuItem(
                  text: 'Products',
                  icon: Icons.shopping_cart,
                  value: data['products']?.toString() ?? '0',
                ),
                const Divider(color: AppColors.subtitleColor, thickness: 0.5),
                MenuItem(
                  text: 'Reviews',
                  icon: Icons.reviews,
                  value: data['reviews']?.toString() ?? '0',
                ),
                const Divider(color: AppColors.subtitleColor, thickness: 0.5),
                MenuItem(
                  text: 'Posts',
                  icon: Icons.post_add,
                  value: data['posts']?.toString() ?? '0',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final String value;

  const MenuItem({
    required this.text,
    required this.icon,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Debugging: log MenuItem text and value when it is built
    debugPrint("Building MenuItem: $text with value $value");

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: AppColors.titleColor, size: 28),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: AppColors.titleColor,
                fontSize: 16,
              ),
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              color: AppColors.subtitleColor,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
