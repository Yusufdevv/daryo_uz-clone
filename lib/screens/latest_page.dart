import 'package:daryo_uz_clone/provider/articles_provider.dart';
import 'package:daryo_uz_clone/widgets/news_item_no_shimmer.dart';
import 'package:daryo_uz_clone/widgets/news_item_with_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LatestPage extends StatelessWidget {
  const LatestPage({Key? key}) : super(key: key);

  Future<void> _refreshArticles(BuildContext context) async {
    await Provider.of<ArticlesProvider>(context, listen: false).fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _refreshArticles(context),
        builder: (ctx, snapshotData) {
          if (snapshotData.connectionState == ConnectionState.waiting) {
            return SizedBox(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, i) {
                      return const NewsItemWithShimmer();
                    }));
          } else if (snapshotData.connectionState == ConnectionState.done) {
            return RefreshIndicator(
                onRefresh: () => _refreshArticles(context),
                child: Consumer<ArticlesProvider>(
                    builder: (c, articlesProvider, _) {
                  return articlesProvider.articcles.isNotEmpty
                      ? SizedBox(
                          child: ListView.builder(
                              itemCount: articlesProvider.articcles.length,
                              itemBuilder: (context, i) {
                                return NewsItemNoShimmer(
                                  article: articlesProvider.articcles[i],
                                );
                              }),
                        )
                      : const Center(
                          child: Text("Yangiliklar mavjud emas"),
                        );
                }));
          } else {
            return const Center(
              child: Text('Xatolik sodir bo\'ldi'),
            );
          }
        });
  }
}
