import 'package:daryo_uz_clone/models/new.dart';
import 'package:daryo_uz_clone/widgets/news_item_no_shimmer.dart';
import 'package:daryo_uz_clone/widgets/news_item_with_shimmer.dart';
import 'package:flutter/material.dart';

class LatestPage extends StatefulWidget {
  const LatestPage({Key? key}) : super(key: key);

  @override
  State<LatestPage> createState() => _LatestPageState();
}

class _LatestPageState extends State<LatestPage> {
  List<New> news = [
    New(
        title:
            'Shavkat Mirziyoyev xalqaro shaxmat olimpiadasi chempionlarini faxriy unvon bilan taqdirladi',
        content: 'content',
        watchCount: '1299',
        time: '14:17',
        date: '11 avgust 2022',
        imageUrl:
            'https://daryo.uz/static/2022/08/medium-photo_2022-07-29_23-48-03.jpg'),
    New(
        title:
            'Shavkat Mirziyoyev xalqaro shaxmat olimpiadasi chempionlarini faxriy unvon bilan taqdirladi',
        content: 'content',
        watchCount: '1299',
        time: '14:17',
        date: '11 avgust 2022',
        imageUrl:
            'https://daryo.uz/static/2022/08/medium-photo_2022-07-29_23-48-03.jpg'),
    New(
        title:
            'Shavkat Mirziyoyev xalqaro shaxmat olimpiadasi chempionlarini faxriy unvon bilan taqdirladi',
        content: 'content',
        watchCount: '1299',
        time: '14:17',
        date: '11 avgust 2022',
        imageUrl:
            'https://daryo.uz/static/2022/08/medium-photo_2022-07-29_23-48-03.jpg'),
  ];
  late bool isloading;

  @override
  void initState() {
    isloading = true;
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isloading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          itemCount: news.length,
          itemBuilder: (context, i) {
            return NewsItem(newItem: news[i], isLoading: isloading);
          }),
    );
  }
}

// ignore: must_be_immutable
class NewsItem extends StatelessWidget {
  final New newItem;
  final bool isLoading;
  const NewsItem({
    required this.newItem,
    required this.isLoading,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const NewsItemWithShimmer()
        : NewsItemNoShimmer(newItem: newItem);
  }
}




