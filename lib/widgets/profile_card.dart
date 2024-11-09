import 'package:flutter/material.dart';
import 'package:social_app/constants/styles.dart';

class ProfileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          // Profile Header
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Micelle Johnathan",
                    style: TextStyle(
                      color: AppColors.titleColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "@Micelle_NYC",
                    style: TextStyle(
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
                  value: '2.3k',
                ),
                const Divider(color: AppColors.subtitleColor, thickness: 0.5),
                MenuItem(
                  text: 'Likes',
                  icon: Icons.favorite_border,
                  value: '1.5k',
                ),
                const Divider(color: AppColors.subtitleColor, thickness: 0.5),
                MenuItem(
                  text: 'Posts',
                  icon: Icons.workspaces_outline,
                  value: '342',
                ),
                const Divider(color: AppColors.subtitleColor, thickness: 0.5),
                MenuItem(
                  text: 'Archives',
                  icon: Icons.update,
                  value: '15',
                ),
                const Divider(color: AppColors.subtitleColor, thickness: 0.5),
                MenuItem(
                  text: 'Notifications',
                  icon: Icons.notifications_outlined,
                  value: '8',
                ),
                const Divider(color: AppColors.subtitleColor, thickness: 0.5),
                MenuItem(
                  text: 'Settings',
                  icon: Icons.settings,
                  value: '',
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
