import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/widget/customized_listtile.dart';
import 'package:myapp/model/article_model.dart';
import 'package:myapp/services/api_service.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  ApiService? client = ApiService();
  ApiService1? client1 = ApiService1();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Top Headlines',
          style: GoogleFonts.aboreto(
              fontWeight: FontWeight.w700, color: Colors.black, fontSize: 20),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 170,
            width: double.infinity,
            child: FutureBuilder<List<Articles?>>(
              future: client1!.getToheadLines(),
              builder: (BuildContext context, snapshot1) {
                if (!snapshot1.hasData) {
                  return Center(
                    child: CircularProgressIndicator(
                      color: const Color.fromARGB(255, 33, 236, 243),
                    ),
                  );
                } else {
                  final articles1 = snapshot1.data;
                  return Animate(
                    effects: [
                      SlideEffect(duration: Duration(seconds: 1)),
                      FadeEffect(),
                    ],
                    child: ListView.separated(
                      padding: EdgeInsets.all(10),
                      separatorBuilder: (context, index) => SizedBox(
                        width: 20,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemCount: articles1!.length,
                      itemBuilder: (context, index) {
                        if (articles1[index]!.title != null &&
                            articles1[index]!.description != null &&
                            articles1[index]!.urlToImage != null &&
                            articles1[index]!.content != null) {
                          return customListtile1(context, articles1[index]!);
                        }
                        return Container();
                      },
                    ),
                  );
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'News',
                  style: GoogleFonts.aboreto(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 20),
                )),
          ),
          Expanded(
            child: Animate(
              effects: [
                SlideEffect(duration: Duration(seconds: 2)),
                FadeEffect(),
              ],
              child: FutureBuilder<List<Articles?>>(
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
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(height: 20,),
                        itemCount: articles!.length,
                        itemBuilder: (context, index) {
                          if (articles[index]!.title != null &&
                              articles[index]!.description != null &&
                              articles[index]!.urlToImage != null &&
                              articles[index]!.content != null) {
                            return customListtile(context, articles[index]!);
                          }
                          return Container();
                        },
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
