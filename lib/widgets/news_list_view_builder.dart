import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsly/models/article_model.dart';
import 'package:newsly/services/news_service.dart';
import 'package:newsly/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key, required this.category,
  });
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
 var future;

  @override

  void initState() {
    super.initState();
    //store 
   future= NewsService(Dio()).getTopheadlines(
    category: widget.category,
   );
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      //put request 
      //build ui based on request m3
      //ميقعدش يعمل كذه ريكويست 
      future:future ,
      builder: (context, snapshot){
      if (snapshot.hasData) {
          return NewsListView(
            articles: snapshot.data!,
            );
        }else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Center(child: Text('No news found'),),    
            );
        } else {
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator(),),);
        }
    }
    ,);

  }
}
