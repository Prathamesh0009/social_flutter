// lib/models/profile_model.dart

class ProfileData {
  final String name;
  final String description;
  final String image;
  final int followers;
  final int following;
  final int customers;
  final int products;
  final int reviews;
  final int posts;

  ProfileData({
    required this.name,
    required this.description,
    required this.image,
    required this.followers,
    required this.following,
    required this.customers,
    required this.products,
    required this.reviews,
    required this.posts,
  });

  // Factory constructor to create a ProfileData object from JSON
  factory ProfileData.fromJson(Map<String, dynamic> json) {
    return ProfileData(
      name: json['name'] ?? 'Name Not Available',
      description: json['description'] ?? 'No description available',
      image: json['image'] ??
          "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg", // Default image URL
      followers: json['followers'] ?? 0,
      following: json['following'] ?? 0,
      customers: json['customers'] ?? 0,
      products: json['products'] ?? 0,
      reviews: json['reviews'] ?? 0,
      posts: json['posts'] ?? 0,
    );
  }
}
