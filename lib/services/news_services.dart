import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticlesModel>> getNews({required String category}) async {
    try {
      final response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=f17e4034b45e4006b0ee570494c42791&category=$category");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticlesModel> articleList = [];

      for (var article in articles) {
        ArticlesModel articlesModel = ArticlesModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
        );
        articleList.add(articlesModel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
