import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';

import '../news_api_model.dart';

class RemoteDataSource {
  final String apiKey = '318123271b444e41b414c18aec72dd17';
  final String baseUrl = 'https://newsapi.org/v2/everything';
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

  Future<NewsApiModel?> getNewsbyId(String id) async {
    try {
      final response = await dio.get('$baseUrl?q=tesla&apiKey=$apiKey');

      if (response.statusCode == 200) {
        final data = response.data;
        final newsList = (data['articles'] as List)
            .map((e) => NewsApiModel.fromJson(e))
            .toList();

        return newsList.firstWhereOrNull((news) => news.url == id);
      }
      return null;
    } catch (e, stacktrace) {
      log(e.toString());
      log(stacktrace.toString());
    }
    return null;
  }
}
