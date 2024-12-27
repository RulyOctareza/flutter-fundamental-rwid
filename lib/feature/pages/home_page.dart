import 'package:flutter/material.dart';
import 'package:flutter_rwid/feature/pages/settings_page.dart';
import 'package:flutter_rwid/feature/widgets/category.dart';
import 'package:flutter_rwid/feature/widgets/news_container.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
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
                  const SizedBox(
                    height: 10,
                  ),
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
                          fit: BoxFit.fill),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Discover a world of News that matter to you',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: const Text('Latest news'),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: const Text('See All'),
                ),
              ],
            ),
            const Column(
              children: [
                NewsContainer(
                    categorynews: 'Technology',
                    date: '27 Oct 2024',
                    news: 'AI Revolutionizes Data Processing in 2024'),
                NewsContainer(
                    categorynews: 'Technology',
                    date: '27 Oct 2024',
                    news: 'AI Revolutionizes Data Processing in 2024'),
                NewsContainer(
                    categorynews: 'Technology',
                    date: '27 Oct 2024',
                    news: 'AI Revolutionizes Data Processing in 2024'),
                NewsContainer(
                    categorynews: 'Technology',
                    date: '27 Oct 2024',
                    news: 'AI Revolutionizes Data Processing in 2024'),
              ],
            )
          ],
        ),
      ],
    );
  }
}
