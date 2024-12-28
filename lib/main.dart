import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rwid/core/database/objectbox/objectbox.dart';
import 'package:flutter_rwid/core/routes/route.dart';
import 'package:flutter_rwid/feature/news/bloc/news_bloc.dart';
import 'package:flutter_rwid/feature/news/repository/news_data_provider.dart';
import 'package:flutter_rwid/feature/news/repository/news_repository.dart';

late ObjectBox objectBox;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  objectBox = await ObjectBox.create();

  runApp(MyApp(
    newsRepository: NewsRepository(
      newsDataProvider: NewsDataProvider(objectBox: objectBox),
    ),
  ));
}

class MyApp extends StatelessWidget {
  final NewsRepository newsRepository;

  const MyApp({super.key, required this.newsRepository});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsBloc(
          newsRepository: NewsRepository(
              newsDataProvider: NewsDataProvider(objectBox: objectBox))),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News App',
        initialRoute: '/',
        routes: appRoutes,
      ),
    );
  }
}
