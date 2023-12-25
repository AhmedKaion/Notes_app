import 'package:dio/dio.dart';
import 'package:practice/news/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadline({required String category}) async {

      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=a66fccda26e84d20a79d27ea03bcb6a5&country=us&category=$category');

      List<ArticleModel> articleData =
          List<ArticleModel>.from((response.data['articles'] as List).map((e) => ArticleModel.fromJson(e)));

      return articleData;

      // Map<String, dynamic> jsonData = response.data;
      // List<dynamic> articles = jsonData['articles'];
      //
      // List<ArticleModel> articlesList = [];
      // for (var article in articles) {
      //   ArticleModel articleModel = ArticleModel(
      //     image: article['urlToImage'],
      //     title: article['title'],
      //     subTitle: article['description'],
      //   );
      //
      //   articlesList.add(articleModel);
      // }
      // return articlesList;
    }
  }


// void getGeneralNews() async {
//   final response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=a66fccda26e84d20a79d27ea03bcb6a5');
//   print(response);
// }
//
// void getSportsNews() async {
//   final response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=a66fccda26e84d20a79d27ea03bcb6a5');
//   print(response);
// }
