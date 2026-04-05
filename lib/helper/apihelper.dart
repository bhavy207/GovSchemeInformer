import 'dart:convert';
import 'package:http/http.dart' as http;
import '../modal/post_model.dart';

class ApiHelper {
  static const String apiUrl = 'https://jsonplaceholder.typicode.com/posts';

  static Future<List<Post>> getPosts() async {
    try {
      final response = await http.get(
        Uri.parse(apiUrl),
        headers: {
          'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)',
          'Accept': 'application/json',
        },
      );
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = jsonDecode(response.body);
        return jsonData.map((e) => Post.fromJson(e)).toList();
      } else {
        throw Exception('Failed to load posts (Status Code: ${response.statusCode})');
      }
    } catch (e) {
      throw Exception('An error occurred: $e');
    }
  }
}
