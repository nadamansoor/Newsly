class ArticleModel {
   final String? image ;
   final String? title ;
   final String? subtitle ;
   final String? url ;
// final is immutable
  ArticleModel({required this.image, required this.title, required this.subtitle, required this.url});

  factory ArticleModel.fromJson(json) {
   return ArticleModel(
    image: json['image'], 
   title: json['title'], 
   subtitle: json['subtitle'],
    url: json['url']);
  }
}