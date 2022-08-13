import 'package:daryo_uz_clone/models/articles.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ArticlesProvider with ChangeNotifier {
  List<Article> articcles = [];

  Future<void> fetchData() async {
    String url =
        'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=4a0a7cc78ecc4b5ebe738002b5a1a849';

    try {
      final response = await http.get(Uri.parse(url));
      if (jsonDecode(response.body) != null) {
        final Map<String, dynamic> body = jsonDecode(response.body);

        final Articles articles = Articles.fromJson(body);

        articcles = articles.articles!;
        notifyListeners();
      }
    } catch (e) {
      rethrow;
    }
  }
}
