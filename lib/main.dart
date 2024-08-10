import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/views/home_view.dart';

void main() {
  getNews();
  runApp(const NewsApp());
}

final dio = Dio();

void getNews() async {
  final response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=4cb3201f20c8455999a1220db93cfd5f');
  print(response);
}
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
