import 'package:flutter/material.dart';
import 'package:myapp/model/article_model.dart';

class ArticleDetails extends StatelessWidget {
   Articles articles;
   ArticleDetails({super.key,required this.articles});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Article'),
      ),
    );
  }
}