import 'dart:convert';

import 'package:http/http.dart';

import '../model/article_model.dart';

class ApiService {
  final endPointUrl = Uri.parse(
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=54b83a9e70554d9a992790753eab0f18");

  Future<List<Articles?>> getArticle() async {
    Response res = await get(endPointUrl);

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Articles> articles =
          body.map((dynamic items) => Articles.fromJson(items)).toList();

      return articles;
    } else {
      throw "Can't get the articles ";
    }
  }
}
