import 'dart:convert';

import 'package:daryo_uz_clone/models/articles.dart';
import 'package:daryo_uz_clone/widgets/news_item_no_shimmer.dart';
import 'package:daryo_uz_clone/widgets/news_item_with_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LatestPage extends StatefulWidget {
  const LatestPage({Key? key}) : super(key: key);

  @override
  State<LatestPage> createState() => _LatestPageState();
}

class _LatestPageState extends State<LatestPage> {
  List<Article> _articles = [
  ];
  late bool isloading;

  void fetchData() async {
    String url = 'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=4a0a7cc78ecc4b5ebe738002b5a1a849';
  
    final response = await http.get(Uri.parse(url));

    final Map<String, dynamic> body = jsonDecode(response.body);

    final Articles articles = Articles.fromJson(body);

    setState(() {
      _articles = articles.articles!;
    });

  }

  @override
  void initState() {
    isloading = true;
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isloading = false;
      });
    });
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          itemCount: _articles.length,
          itemBuilder: (context, i) {
            return NewsItem(article: _articles[i], isLoading: isloading);
          }),
    );
  }
}

// ignore: must_be_immutable
class NewsItem extends StatelessWidget {
  final Article article;
  final bool isLoading;
  const NewsItem({
    required this.article,
    required this.isLoading,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const NewsItemWithShimmer()
        : NewsItemNoShimmer(article: article);
  }
}




