import 'package:flutter/material.dart';
import 'package:myapp/model/article_model.dart';
import 'package:myapp/view/article_details.dart';

Widget customListtile(BuildContext context, Articles articles) {
  return Container(
    margin: EdgeInsets.all(12.0),
    padding: EdgeInsets.all(8.0),
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
                  child: Center(child: Text(articles.source!.name!,style: TextStyle(color: Colors.white),)),
                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>ArticleDetails(articles:articles))),
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
Widget customListtile1(BuildContext context, Articles articles1) {
  return Container(
    margin: EdgeInsets.all(12.0),
    padding: EdgeInsets.all(8.0),
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
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
                border: Border.fromBorderSide(BorderSide.none),
                image: DecorationImage(
                  image: NetworkImage(articles1.urlToImage!),
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
                  child: Center(child: Text(articles1.source!.name!,style: TextStyle(color: Colors.white),)),
                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                //onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>ArticleDetails(articles:articles))),
                child: Text(
                  articles1.title!,
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
