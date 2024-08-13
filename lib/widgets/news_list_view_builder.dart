import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatelessWidget {
  const NewsListViewBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NewsService(Dio()).getNews(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(
                child: Text('Oops there was an error, try again later'),
              ),
            );
          } else {
            return const SliverToBoxAdapter(
                child: Center(
              child: CircularProgressIndicator(),
            ));
          }
        });
  }
}
