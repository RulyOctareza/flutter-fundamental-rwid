import 'package:flutter/material.dart';
import 'package:flutter_rwid/core/database/news_api_model.dart';
import 'package:intl/intl.dart';

class DetailPageNews extends StatelessWidget {
  final NewsApiModel news;

  const DetailPageNews({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(news.title ?? 'Detail Berita'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (news.urlToImage != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(news.urlToImage!),
              ),
            const SizedBox(height: 10),
            Text(
              news.title ?? 'Tidak ada judul',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Text(
                  news.author ?? 'Unknown',
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  news.publishedAt != null
                      ? DateFormat('dd MMM yyyy, HH:mm')
                          .format(news.publishedAt!)
                      : 'Tanggal tidak tersedia',
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              news.content ?? 'Tidak ada konten tersedia.',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
