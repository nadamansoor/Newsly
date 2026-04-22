// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:newsly/models/article_model.dart';
// import 'package:newsly/services/news_service.dart';
// import 'package:newsly/widgets/news_title.dart';
// // want to call getNews() once only  
// class NewsListView extends StatefulWidget {
//   const NewsListView({
//     super.key,
//   });

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModel> articles=[];
// // default 
//   bool isLoading = true;
//   @override
//   // TODO: implement initState data before build and once 
//   // cant put async with init => future not void and that is wrong
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewsService(Dio()).getNews();
//     isLoading = false;
//     setState(() {
      
//     });
//   }
 

//   @override
//   Widget build(BuildContext context)  {
//       // very bad couse of the rebuild + cost alot of money 
//       // NewsService(Dio()).getNews();
//        //  List <ArticleModel> articles =await NewsService(Dio()).getNews();
//                                // true            //false
//     return isLoading
//           ?SliverFillRemaining(
//             hasScrollBody: false,
//             child: Center(
//               child: const CircularProgressIndicator()))
//             : SliverList(
//               delegate: SliverChildBuilderDelegate(
//                 childCount: articles.length,
//                 (context, index){
//                   return Padding(
//                     padding: const EdgeInsets.only(bottom: 22),
//                     child: NewsTitle(
//                       articleModel: articles[index],
//                     ),
//                   );
//                 }));
//   }
// }