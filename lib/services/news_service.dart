import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews() async {
    Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=4cb3201f20c8455999a1220db93cfd5f',
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    // List<Map<String, dynamic>> articles =
    //     jsonData['articles'] as List<Map<String, dynamic>>;
    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article['urlToImage'],
        title: article['title'],
        subtitle: article['description'],
      );
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
