import 'package:flutter/material.dart';
import 'package:news_app/article_screen.dart';
import 'package:news_app/discover_screen.dart';
import 'package:news_app/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter News App UI',
      initialRoute: '/',
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        DiscoverScreen.routeName: (context) => const DiscoverScreen(),
        ArticleScreen.routeName: (context) => const ArticleScreen(),
      },
    );
  }
}
