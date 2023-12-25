// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:practice/news/article_model.dart';
// import 'package:practice/news/service.dart';
// import 'package:practice/news/tile.dart';
//
// class NewsList extends StatefulWidget {
//   const NewsList({super.key});
//
//   @override
//   State<NewsList> createState() => _NewsListState();
//
// }
//
// class _NewsListState extends State<NewsList> {
//   List<ArticleModel> articles =[];
//
//   bool isLoading = false;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//
//   }
//
//   Future<void> getGeneralNews() async {
//     articles= await NewsService(Dio()).getNews();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return isLoading?
//     const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())) :
//     SliverList(
//       delegate: SliverChildBuilderDelegate(
//         childCount: articles.length,
//             (context,index) {
//           return Padding(
//               padding: EdgeInsets.only(bottom: 22),
//               child: Tile(
//                 articleModel: articles[index],
//               )
//           );
//         },
//
//       ),
//     );
//
//     //SliverToBoxAdapter(child: NewsList() ),
//     // return ListView.builder(
//     //   shrinkWrap: true,
//     //   physics: NeverScrollableScrollPhysics(),
//     //     itemCount: 5,
//     //     itemBuilder: (context, index) {
//     //       return const Padding(
//     //         padding: const EdgeInsets.only(bottom: 22.0),
//     //         child: Tile(),
//     //       );
//     //     }
//     // );
//   }
// }
