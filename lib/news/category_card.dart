import 'package:flutter/material.dart';
import 'package:practice/news/category_model.dart';
import 'package:practice/news/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.cate});

  final CategoryModel cate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return CategoryView(
          category: cate.category,
        );
      },
      ),
      );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(cate.image)),
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(8)),
          child: Center(
              child: Text(cate.category,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18))),
        ),
      ),
    );
  }
}
