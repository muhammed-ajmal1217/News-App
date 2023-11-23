import 'package:flutter/material.dart';
import 'package:myapp/model/article_model.dart';
import 'package:myapp/view/topline_article.dart';

Widget topHeadlineLIsttile(BuildContext context, Articles articles1) {
  return Container(
    height: 300,
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
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.fromBorderSide(BorderSide.none),
                image: DecorationImage(
                  image: NetworkImage(articles1.urlToImage!,),
                  fit: BoxFit.cover,
                )),
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => TopArticleDetails(articles: articles1))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      articles1.title!,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepOrange,
                    ),
                    child: Center(
                        child: Text(
                      articles1.source!.name!,
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}