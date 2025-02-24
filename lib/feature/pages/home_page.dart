import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rwid/feature/news_api/bloc/news_api_bloc.dart';
import 'package:flutter_rwid/feature/news_api/bloc/news_api_event.dart';
import 'package:flutter_rwid/feature/news_api/bloc/news_api_state.dart';
import 'package:flutter_rwid/feature/news_api/view/news_api_card.dart';
import 'package:flutter_rwid/feature/pages/settings_page.dart';
import 'package:flutter_rwid/feature/widgets/category.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: () async {
            context.read<NewsApiBloc>().add(LoadNews());
          },
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'Welcome Back, \n$name !',
                            style: const TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(),
                          Lottie.asset(
                            'assets/lottie/Animation - 1733772213165.json',
                            width: 120,
                            height: 120,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Discover a world of News that matter to you',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Category(
                        color: Colors.blue,
                        text: 'All',
                        colortext: Colors.white,
                      ),
                      Category(
                        color: Colors.white,
                        text: 'Bussiness',
                        colortext: Colors.blue,
                      ),
                      Category(
                        color: Colors.white,
                        text: 'Economy',
                        colortext: Colors.blue,
                      ),
                      Category(
                        color: Colors.white,
                        text: 'Technology',
                        colortext: Colors.blue,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: const Text(
                        'Latest news',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: const Text(
                        'See All',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                BlocBuilder<NewsApiBloc, NewsApiState>(
                    builder: (context, state) {
                  if (state is NewsApiLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is NewsApiError) {
                    return Center(child: Text(state.message));
                  } else if (state is NewsApiLoaded) {
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.news.length,
                      itemBuilder: (context, index) {
                        return NewsApiCard(news: state.news[index]);
                      },
                    );
                  }
                  return const Center(child: Text('No Data available'));
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
