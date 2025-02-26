import 'package:flutter/material.dart';
import 'package:flutter_rwid/core/database/news_api_model.dart';
import 'package:flutter_rwid/feature/auth/login_page.dart';
import 'package:flutter_rwid/feature/auth/signup_page.dart';
import 'package:flutter_rwid/feature/news/views/news_form.dart';
import 'package:flutter_rwid/feature/news/views/news_page.dart';
import 'package:flutter_rwid/feature/pages/dashboard.dart';
import 'package:flutter_rwid/feature/pages/home_page.dart';
import 'package:flutter_rwid/feature/pages/saved_page.dart';
import 'package:flutter_rwid/feature/pages/settings_page.dart';
import 'package:flutter_rwid/feature/todo_list/todo_list_page.dart';

late final NewsApiModel news;

Map<String, Widget Function(BuildContext)> appRoutes = {
  '/': (context) => const LoginPage(),
  '/signup': (context) => const SignupPage(),
  '/dashboard': (context) => const Dashboard(),
  '/saved': (context) => const SavedPage(),
  '/settings': (context) => const SettingsPage(),
  '/newspage': (context) => const NewsPage(),
  '/newsform': (context) => const NewsForm(),
  '/todolist': (context) => const TodoListScreen(),
  '/homepage': (context) => const HomePage(),
};
