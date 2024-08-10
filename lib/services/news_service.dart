import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  void getSportNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=4cb3201f20c8455999a1220db93cfd5f');
    print(response);
  }

  void getGeneralNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=4cb3201f20c8455999a1220db93cfd5f');
    print(response);
  }
}
