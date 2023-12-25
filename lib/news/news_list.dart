import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:practice/news/article_model.dart';
import 'package:practice/news/service.dart';
import 'package:practice/news/tile.dart';

class NewsList extends StatelessWidget {
  List<ArticleModel> articles;

  NewsList({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 22),
            child: Tile(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );

    //SliverToBoxAdapter(child: NewsList() ),
    // return ListView.builder(
    //   shrinkWrap: true,
    //   physics: NeverScrollableScrollPhysics(),
    //     itemCount: 5,
    //     itemBuilder: (context, index) {
    //       return const Padding(
    //         padding: const EdgeInsets.only(bottom: 22.0),
    //         child: Tile(),
    //       );
    //     }
    // );
  }
}
