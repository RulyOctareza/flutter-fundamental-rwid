import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rwid/core/database/objectbox/objectbox.dart';
import 'package:flutter_rwid/core/database/remote/remote_data_source.dart';
import 'package:flutter_rwid/core/routes/route.dart';
import 'package:flutter_rwid/feature/news/bloc/news_bloc.dart';
import 'package:flutter_rwid/feature/news/bloc/news_event.dart';
import 'package:flutter_rwid/feature/news/repository/news_data_provider.dart';
import 'package:flutter_rwid/feature/news/repository/news_repository.dart';
import 'package:flutter_rwid/feature/news_api/bloc/news_api_bloc.dart';
import 'package:flutter_rwid/feature/news_api/bloc/news_api_event.dart';
import 'package:flutter_rwid/firebase_options.dart';

late ObjectBox objectBox;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
    return MultiBlocProvider(
        providers: [
          BlocProvider<NewsBloc>(
            create: (_) => NewsBloc(
                newsRepository: NewsRepository(
                    newsDataProvider: NewsDataProvider(objectBox: objectBox)))
              ..add(GetNews()),
          ),
          BlocProvider<NewsApiBloc>(
            create: (_) => NewsApiBloc(
              remoteDataSource: RemoteDataSource(),
            )..add(LoadNews()),
          ),
        ],
        child: MaterialApp(
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: appRoutes,
        ));
  }
}
