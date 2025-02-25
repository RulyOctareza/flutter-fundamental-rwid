import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:flutter_rwid/core/database/news_api_model.dart';
import 'package:flutter_rwid/core/database/remote/remote_data_source.dart';

class NewsDetailEvent {
  final NewsApiModel newsId;
  NewsDetailEvent(this.newsId);
}

abstract class NewsDetailState {}

class NewsDetailLoading extends NewsDetailState {}

class NewsDetailLoaded extends NewsDetailState {
  final NewsApiModel news;
  NewsDetailLoaded(this.news);
}

class NewsDetailError extends NewsDetailState {
  final String message;
  NewsDetailError(this.message);
}

class NewsDetailBloc extends Bloc<NewsDetailEvent, NewsDetailState> {
  final RemoteDataSource remoteDataSource;

  NewsDetailBloc({required this.remoteDataSource})
      : super(NewsDetailLoading()) {
    on<NewsDetailEvent>((event, emit) async {
      emit(NewsDetailLoading());
      try {
        final news = await remoteDataSource.getNewsbyId(event.newsId as String);
        if (news != null) {
          emit(NewsDetailLoaded(news));
        } else {
          emit(NewsDetailError("News not found"));
        }
      } catch (e) {
        log(e.toString());
        emit(NewsDetailError(e.toString()));
      }
    });
  }
}
