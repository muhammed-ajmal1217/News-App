import 'package:flutter/material.dart';
import 'package:myapp/model/article_model.dart';
import 'package:myapp/view/article_details.dart';
import 'package:myapp/view/topline_article.dart';

Widget newsListTile(BuildContext context, Articles articles) {
  return Container(
    height: 350,
    width: 250,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
          ),
        ]),
    child: Container(
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.fromBorderSide(BorderSide.none),
                image: DecorationImage(
                  image: NetworkImage(articles.urlToImage!),
                  fit: BoxFit.cover,
                )),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 130),
                child: Container(
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepOrange,
                  ),
                  child: Center(
                      child: Text(
                    articles.source!.name!,
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => ArticleDetails(articles: articles))),
                child: Text(
                  articles.title!,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 6, 50, 87),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

