import 'package:flutter_rwid/core/database/objectbox/news_model.dart';
import 'package:flutter_rwid/core/database/objectbox/objectbox.dart';

class NewsDataProvider {
  final ObjectBox objectBox;

  NewsDataProvider({required this.objectBox});

  List<Newsmodel> getNews() {
    return objectBox.store.box<Newsmodel>().getAll();
  }

  void addNews(Newsmodel news) {
    objectBox.store.box<Newsmodel>().put(news);
  }

  void deleteNews(int id) {
    objectBox.store.box<Newsmodel>().remove(id);
  }
}
