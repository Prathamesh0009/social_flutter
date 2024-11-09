import 'package:http/http.dart' as http;
import 'dart:convert';

class UserProfileApi {
  // Fetch Profile Data
  static Future<Map<String, dynamic>> fetchProfileData() async {
    final url = Uri.parse('https://your-lambda-function-url'); // Replace with actual Lambda function URL

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        // Parse and return JSON data
        return json.decode(response.body)['obj'];
      } else {
        throw Exception('Failed to load profile data');
      }
    } catch (e) {
      print('Error fetching profile data: $e');
      return {}; // Return empty data in case of an error
    }
  }
}
