import 'package:flutter/material.dart';
import 'package:flutter_rwid/core/database/news_api_model.dart';

class NewsApiCard extends StatefulWidget {
  final void Function()? onLongPress;
  final NewsApiModel news;
  const NewsApiCard({
    super.key,
    required this.news,
    this.onLongPress,
  });

  @override
  State<NewsApiCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsApiCard> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: widget.onLongPress,
      onTap: () => setState(() => isOpen = !isOpen),
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Chip(
                        labelPadding: const EdgeInsets.all(0),
                        visualDensity: VisualDensity.compact,
                        label: Text(
                          widget.news.author ?? 'Anonim',
                          style:
                              const TextStyle(color: Colors.blue, fontSize: 10),
                        ),
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.circular(32)),
                      ),
                      Text(
                        widget.news.title ?? '',
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        (widget.news.publishedAt ?? '').toString(),
                        style:
                            const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: widget.news.urlToImage != null
                      ? Image.network(
                          widget.news.urlToImage ?? '',
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Image.asset(
                              "assets/images/computer.jpeg",
                              fit: BoxFit.cover,
                            );
                          },
                        )
                      : Image.asset(
                          "assets/images/computer.jpeg",
                          fit: BoxFit.cover,
                        ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            AnimatedSize(
              duration: const Duration(milliseconds: 300),
              child: isOpen
                  ? Text(
                      widget.news.content ?? '',
                      maxLines: 3,
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
