import 'package:dio/dio.dart';
import 'package:newsly/models/article_model.dart';
// need to put it on try and catch block what if there is no internet connection or a fall of api 
// so any method use await = use time then use try and catch 
class NewsService {
  
final Dio dio ;

  NewsService(this.dio);

  Future<List<ArticleModel>> getTopheadlines({required String category})async {
    try{
    var response = await dio.get(
      'https://newsapi.org/v2/top-headlines?apiKey=85223ced400d4b99968ebaae37c8b2b5&country=us&category=$category',
      );

    Map <String , dynamic> jsonData = response.data;
  //data i want to store and dislapy
    List<dynamic> articles =
          jsonData['articles'] ;

    List <ArticleModel> article_list =[];

  // make map to object = list of objects
      for (var ar in articles) {
        ArticleModel articleModel = ArticleModel(
          image: ar['urlToImage'], 
          title: ar['title'], 
          subtitle: ar['description'],
          url: ar['url'],
          );

        article_list.add(articleModel);
        
      }
     return article_list;      
    }
    catch(e){
      print(e);
      return [];
    }
  } 
}