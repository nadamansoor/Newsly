class ArticleModel {
  // img can be null = nullable
  final String? image ;
  final String? title ;
  final String? subtitle ;
  final String? url ;

  ArticleModel({required this.image, required this.title, required this.subtitle, required this.url});
}
