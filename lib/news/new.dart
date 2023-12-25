import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:practice/news/category_card.dart';
import 'package:practice/news/category_list.dart';
import 'package:practice/news/news_list.dart';
import 'package:practice/news/tile.dart';

import 'article_model.dart';
import 'service.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoryList()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListBuilder(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({super.key, required this.category,});
final String category;
  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future= NewsService(Dio()).getTopHeadline(
      category: widget.category
    );
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future:future,
      builder: (context,snapshot) {
        if (snapshot.hasData) {
          return NewsList(articles: snapshot.data!,);
        }
        else if (snapshot.hasError) {
          return SliverToBoxAdapter(child: Text('oops'),);
        }
        else {
          return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()),);
        }
      }
    );
}
}