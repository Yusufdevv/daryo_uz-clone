import 'package:daryo_uz_clone/models/articles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewsItemNoShimmer extends StatelessWidget {
  const NewsItemNoShimmer({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Mahalliy',
                    style: TextStyle(
                        color: Colors.blue[300],
                        fontWeight: FontWeight.bold)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(DateFormat('hh:mm | dd MMMM yyyy | ' ).format(article.publishedAt!),
                        style: const TextStyle(color: Colors.grey)),
                    Icon(Icons.visibility_outlined,
                        color: Colors.blue[300]),
                    const SizedBox(
                      width: 4,
                    ),
                    Text('2022',
                        style: TextStyle(color: Colors.blue[300]))
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(article.urlToImage ?? 'https://daryo.uz/cache/2022/08/thumb-ballon-door-1011x674.jpeg', width: 120,
                errorBuilder: ((context, error, stackTrace) {
                  return  Image.network('https://daryo.uz/cache/2022/08/thumb-ballon-door-1011x674.jpeg', width: 120,);
                }),),
                const SizedBox(width: 10),
                Expanded(
                    child: Text(article.title!,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, height: 1.2))),
              ],
            ),
            const Divider(
              thickness: 1,
            ),
          ],
        ),
      );
  }
}