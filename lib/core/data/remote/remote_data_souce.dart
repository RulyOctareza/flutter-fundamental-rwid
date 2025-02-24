import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_rwid/core/database/news_api_model.dart';

class RemoteDataSouce {
  final Dio dio = Dio(BaseOptions(baseUrl: 'https://newsapi.org/v2'))
    ..interceptors.add(LogInterceptor(responseBody: true));

  Future<List<NewsApiModel>?> getNews() async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/everything?q=tesla&from=2025-01-23&sortBy=publishedAt&apiKey=318123271b444e41b414c18aec72dd17');
      final data = response.data;
      List<NewsApiModel> newsList = [];
      for (var news in data['articles']) {
        if (news['title'] == '[Removed]') continue;
        newsList.add(NewsApiModel.fromJson(news));
      }
      return newsList;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
