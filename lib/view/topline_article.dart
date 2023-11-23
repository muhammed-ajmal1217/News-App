import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/model/article_model.dart';

// ignore: must_be_immutable
class TopArticleDetails extends StatelessWidget {
  Articles articles;
  TopArticleDetails({super.key, required this.articles});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  image: DecorationImage(
                      image: NetworkImage(articles.urlToImage!),
                      fit: BoxFit.cover)),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 50, left: 10, right: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Animate(
                        effects: [
                          SlideEffect(
                            begin: BlurEffect.defaultValue,
                            duration: Duration(seconds: 2)),
                          FadeEffect(),
                        ],
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset('assets/breakingnews.png',height: 50,),
                        ),
                      ),
                      Animate(
                        effects: [
                          SlideEffect(
                            begin: BlurEffect.defaultValue,
                            duration: Duration(seconds: 1)),
                          FadeEffect(),
                        ],
                        child: Text(articles.title!.toUpperCase(),
                            style: GoogleFonts.prompt(
                                color: Colors.white, fontSize: 30)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Padding(
                padding: const EdgeInsets.only(right: 160),
                child: Animate(
                  effects: [
                    SlideEffect(delay: Duration(seconds: 1),),
                    FadeEffect(),
                  ],
                  child: Container(
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepOrange,
                    ),
                    child: Center(child: Text(articles.source!.name!,style: TextStyle(color: Colors.white),)),
                  ),
                ),
              ),
              SizedBox(
              height: 10,
            ),
                  Animate(
                    effects: [
                      BlurEffect(begin: BlurEffect.defaultValue,),
                      SlideEffect(duration: Duration(seconds: 1)),
                      FadeEffect(),
                    ],
                    child: Text(articles.description!,
                    style: GoogleFonts.dmSans(
                      fontSize: 25,
                      color: const Color.fromARGB(255, 39, 39, 39),
                    )),
                  ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 219, 219, 219),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    spreadRadius: 3,
                    color: Color.fromARGB(255, 187, 186, 186)
                  )
                ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Animate(
                     effects: [
                      SlideEffect(
                        delay: Duration(milliseconds: 1)),
                      FadeEffect(),
                    ],
                    child: Text(
                      articles.content!,
                      style: GoogleFonts.outfit(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Animate(
                effects: [
                  SlideEffect(duration: Duration(seconds: 1)),
                  FadeEffect()
                ],
                child: Text(articles.url!)),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Animate(
                  effects: [
                    FadeEffect(),
                    SlideEffect(duration: Duration(seconds: 1)),
                  ],
                  child: Column(
                    children: [
                      Text(articles.publishedAt!),
                      SizedBox(
                        height: 10,
                      ),
                      Text(articles.author!),
                    ],
                  ),
                ),
              ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
