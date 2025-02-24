import 'dart:developer';

import 'package:bloc/bloc.dart';

import 'package:flutter_rwid/feature/news_api/bloc/news_api_event.dart';
import 'package:flutter_rwid/feature/news_api/bloc/news_api_state.dart';

import '../../../core/database/remote/remote_data_source.dart';

class NewsApiBloc extends Bloc<NewsApiEvent, NewsApiState> {
  final RemoteDataSource remoteDataSource;
  NewsApiBloc({required this.remoteDataSource}) : super(NewsApiLoading()) {
    on<NewsApiEvent>((event, emit) async {
      emit(NewsApiLoading());
      try {
        final result = await remoteDataSource.getNews();
        emit(NewsApiLoaded(result ?? []));
      } catch (e) {
        log(e.toString());
        emit(NewsApiError(e.toString()));
      }
    });
  }
}
