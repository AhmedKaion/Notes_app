class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      image: json['urlToImage'] ?? 'https://img.freepik.com/free-vector/page-found-with-people-connecting-plug-concept-illustration_114360-1888.jpg?w=740&t=st=1699474130~exp=1699474730~hmac=dc2f0ba4b5e212ee1524b1e671e5e7664e05edbd9b7af82102028a3f785157e9',
      title: json['title'],
      subTitle: json['description'] ?? '',
    );
  }


  ArticleModel(
      {required this.image, required this.title, required this.subTitle});
}
