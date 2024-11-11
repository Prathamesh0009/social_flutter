// lib/services/profile_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ProfileService {
  final String apiUrl = 'https://t6b6e5ir7a.execute-api.us-east-1.amazonaws.com/test'; // Replace with your actual API URL

  Future<Map<String, dynamic>> fetchProfileData() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load profile data');
      }
    } catch (error) {
      throw Exception('An error occurred: $error');
    }
  }
}
