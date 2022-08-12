import 'package:daryo_uz_clone/models/new.dart';
import 'package:flutter/material.dart';

class NewsItemNoShimmer extends StatelessWidget {
  const NewsItemNoShimmer({
    Key? key,
    required this.newItem,
  }) : super(key: key);

  final New newItem;

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
                    Text('${newItem.time} | ${newItem.date} | ',
                        style: const TextStyle(color: Colors.grey)),
                    Icon(Icons.visibility_outlined,
                        color: Colors.blue[300]),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(newItem.watchCount,
                        style: TextStyle(color: Colors.blue[300]))
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(newItem.imageUrl, width: 140),
                const SizedBox(width: 20),
                Expanded(
                    child: Text(newItem.title,
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