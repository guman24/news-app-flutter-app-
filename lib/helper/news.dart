import 'dart:convert';

import 'package:newsapp/models/news_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<NewsModel> newsList = [];

  Future<void> getNews() async {
    String url =
        "http://newsapi.org/v2/top-headlines?country=in&apiKey=92c619dd65a245d3b5ac0cc54370f558";
    final response = await http.get(url);
    final jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          NewsModel newsModel = NewsModel(
              author: element['author'],
              title: element['title'],
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              publishedAt: element['publishedAt'].toString(),
              content: element['content']);
          newsList.add(newsModel);
        }
      });
    }
  }
}

class CategoryNews {
  List<NewsModel> categoryNewsList = [];
  String apiKey = "92c619dd65a245d3b5ac0cc54370f558";

  Future<void> getNews(String category) async {
    String categoryUrl =
        "http://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=$apiKey";

    final response = await http.get(categoryUrl);
    final jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          NewsModel newsModel = NewsModel(
              author: element['author'],
              title: element['title'],
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              publishedAt: element['publishedAt'].toString(),
              content: element['content']);
          categoryNewsList.add(newsModel);
        }
      });
    }
  }
}
