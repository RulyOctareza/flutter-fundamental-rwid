import 'package:flutter_rwid/core/database/objectbox/news_model.dart';
import 'package:flutter_rwid/feature/news/repository/news_data_provider.dart';

class NewsRepository {
  final NewsDataProvider newsDataProvider;

  NewsRepository({required this.newsDataProvider});

  Future<List<Newsmodel>> getNews() async {
    return newsDataProvider.getNews();
  }

  Future<void> addNews(Newsmodel news) async {
    newsDataProvider.addNews(news);
  }

  Future<void> deleteNews(int id) async {
    newsDataProvider.deleteNews(id);
  }
}
