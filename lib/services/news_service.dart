import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  getNews() async {
    Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?apiKey=4cb3201f20c8455999a1220db93cfd5f&country=eg&category=general',
    );
  }
}
