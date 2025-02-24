import 'dart:developer';

import 'package:dio/dio.dart';

import '../news_api_model.dart';

class RemoteDataSource {
  final Dio dio = Dio(BaseOptions(baseUrl: 'https://newsapi.org/v2'))
    ..interceptors.add(LogInterceptor(responseBody: true));

  Future<List<NewsApiModel>?> getNews() async {
    try {
      final response = await dio.get(
          '/top-headlines?country=us&apiKey=8143d675d9ed468eac2fb3d04af167ab');
      final data = response.data;
      List<NewsApiModel> newsList = [];
      for (var news in data["articles"]) {
        if (news["title"] == "[Removed]") continue;
        newsList.add(NewsApiModel.fromJson(news));
      }
      return newsList;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
