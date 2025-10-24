import 'package:flutter/material.dart';
import 'package:newsly/models/category_model.dart';
import 'package:newsly/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
   const CategoryListView({
    super.key,
  });
  
  final List<CategoryModel> categories = const [
     CategoryModel(imageAssetUrl: 'assets/images/sports.jpg', CategoryName: 'Sports'),
     CategoryModel(imageAssetUrl: 'assets/images/business.jpg', CategoryName: 'Business'),
     CategoryModel(imageAssetUrl: 'assets/images/technology.jpg', CategoryName: 'Technology'),
     CategoryModel(imageAssetUrl: 'assets/images/health.jpg', CategoryName: 'Health'),
     CategoryModel(imageAssetUrl: 'assets/images/science.jpg', CategoryName: 'Science'),
     CategoryModel(imageAssetUrl: 'assets/images/entertainment.jpg', CategoryName: 'Entertainment'),
     CategoryModel(imageAssetUrl: 'assets/images/politics.jpg', CategoryName: 'Politics'),
     CategoryModel(imageAssetUrl: 'assets/images/world.jpg', CategoryName: 'World'),
     CategoryModel(imageAssetUrl: 'assets/images/education.jpg', CategoryName: 'Education'),
     CategoryModel(imageAssetUrl: 'assets/images/lifestyle.jpg', CategoryName: 'Lifestyle'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)
      {
        return Padding(
          padding: const EdgeInsets.all(2),
          child: CategoryCard(
            category: categories[index],
          ),
        );
      }
      ),
    );
  }
}