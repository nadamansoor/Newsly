import 'package:flutter/material.dart';
import 'package:newsly/widgets/category_list_view.dart';
import 'package:newsly/widgets/news_list_view.dart';
import 'package:newsly/widgets/news_title.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar:AppBar(
          title: Center(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'News',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  TextSpan(
                    text: 'Cloud',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    )
                  )
                ]
              )),
          ),
        ),
      
      body:Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoryListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 32,),
            ),

           NewsListView(),
          ],
        ),

        // child: Column(
        //     children: [
        //       CategoryListView(),
        //       SizedBox(height: 32,),
        //       Expanded(child: NewsListView()),
        //     ],
        //   ),
      ),
      ), 
    );
  }
}
