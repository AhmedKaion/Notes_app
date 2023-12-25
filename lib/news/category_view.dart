import 'package:flutter/material.dart';
import 'package:practice/news/new.dart';
import 'package:practice/news/news_list.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
       slivers: [
         NewsListBuilder(
           category: category,
         ),
       ],
      ),
    );
  }
}
