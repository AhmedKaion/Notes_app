import 'package:flutter/material.dart';

import 'category_card.dart';
import 'category_model.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  final List<CategoryModel> cat = const [
    CategoryModel('images/97.png', 'Technology'),
    CategoryModel('images/NIKE_logo.png', 'Sports'),
    CategoryModel('images/97.png', 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cat.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              cate: cat[index],
            );
          }),
    );
  }
}
