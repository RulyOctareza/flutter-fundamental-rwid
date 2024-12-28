import 'package:equatable/equatable.dart';
import 'package:flutter_rwid/core/database/objectbox/news_model.dart';

sealed class NewsEvent extends Equatable {
  const NewsEvent();

  @override
  List<Object> get props => [];
}

class GetNews extends NewsEvent {}

class AddNews extends NewsEvent {
  final Newsmodel news;
  const AddNews(this.news);
}

class UpdateNews extends NewsEvent {
  final Newsmodel news;
  const UpdateNews(this.news);
}

class DeleteNews extends NewsEvent {
  final int id;
  const DeleteNews(this.id);
}
