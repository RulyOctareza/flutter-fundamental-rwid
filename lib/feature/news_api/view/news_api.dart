import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rwid/feature/news_api/bloc/news_api_bloc.dart';
import 'package:flutter_rwid/feature/news_api/bloc/news_api_event.dart';
import 'package:flutter_rwid/feature/news_api/bloc/news_api_state.dart';
import 'package:flutter_rwid/feature/news_api/view/news_api_card.dart';

class NewsApiPage extends StatelessWidget {
  const NewsApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        onRefresh: () async {
          context.read<NewsApiBloc>().add(LoadNews());
        },
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Saved News'),
              centerTitle: true,
            ),
            body: BlocBuilder<NewsApiBloc, NewsApiState>(
              builder: (context, state) {
                return switch (state) {
                  NewsApiLoading() =>
                    const Center(child: CircularProgressIndicator()),
                  NewsApiLoaded() => state.news.isEmpty
                      ? const Center(child: Text('No Saved News'))
                      : Padding(
                          padding: const EdgeInsets.all(16),
                          child: ListView.builder(
                            itemBuilder: (BuildContext context, int index) {
                              final news = state.news[index];
                              return NewsApiCard(
                                  news: news, onLongPress: () {});
                            },
                            itemCount: state.news.length,
                          ),
                        ),
                  NewsApiError() => Center(
                        child: Column(
                      children: [
                        Text(state.message),
                        ElevatedButton(
                            onPressed: () {
                              context.read<NewsApiBloc>().add(LoadNews());
                            },
                            child: const Text('Retry'))
                      ],
                    )),
                };
              },
            )));
  }
}
