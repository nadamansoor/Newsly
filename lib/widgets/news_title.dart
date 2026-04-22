import 'package:flutter/material.dart';
import 'package:newsly/models/article_model.dart';
import 'package:newsly/views/news_web_vew.dart';
//chashed network image
class NewsTitle extends StatelessWidget {
  const NewsTitle({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context){
          return ArticleWebView(url: articleModel.url?? '');
            },
          ),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(6),
            child: Image.network(
              articleModel.image?? 'https://images.unsplash.com/photo-1765498068996-1e4c0bfd2219?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
      
          SizedBox(
            height: 12,
          ),
      
          Text(
            articleModel.title?? ' ',
            maxLines: 2,
            //if you have no space add ... = ellispis
            overflow: TextOverflow.ellipsis,
      
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          
          SizedBox(
            height: 8,
          ),
      
          Text(
            articleModel.subtitle?? '',
            maxLines: 2,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey,
      
            ),
          )
        ],
      ),
    );
  }
}