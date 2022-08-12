import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NewsItemWithShimmer extends StatelessWidget {
  const NewsItemWithShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                      height: 18, width: 60, color: Colors.grey[300]),
                ),
                Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                      height: 18, width: 200, color: Colors.grey[300]),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                      height: 100, width: 140, color: Colors.grey[300]),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                          height: 18, width: 200, color: Colors.grey[300]),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                          height: 18, width: 180, color: Colors.grey[300]),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                          height: 18, width: 160, color: Colors.grey[300]),
                    ),
                  ],
                ),
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