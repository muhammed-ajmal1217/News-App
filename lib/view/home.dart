import 'package:flutter/material.dart';
import 'package:myapp/widget/customized_listtile.dart';
import 'package:myapp/model/article_model.dart';
import 'package:myapp/services/api_service.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  ApiService? client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 218, 218),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
            child: Text(
          "News App",
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
        )),
        backgroundColor: const Color.fromARGB(255, 6, 50, 87),
        elevation: 4,
      ),
      body: FutureBuilder<List<Articles?>>(
        future: client!.getArticle(),
        builder: (BuildContext context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(
                color: const Color.fromARGB(255, 33, 236, 243),
              ),
            );
          } else {
            final articles = snapshot.data;
            return ListView.builder(
              itemCount: articles!.length,
              itemBuilder: (context, index) {
                if (articles[index]!.title != null &&
                    articles[index]!.description != null &&
                    articles[index]!.urlToImage != null &&
                    articles[index]!.content != null) {
                  return customListtile(context , articles[index]!);
                }
                return null;
              },
            );
          }
        },
      ),
    );
  }
}
