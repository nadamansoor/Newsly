import 'package:flutter/material.dart';
import 'package:newsly/models/category_model.dart';
import 'package:newsly/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

   final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context){
          return CategoryView(
            category: category.CategoryName,
            );
            },
          ),
        );
      },
      child: Container(
        height: 100,
        width: 190,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(category.imageAssetUrl)
            ),
        ),
        child: Center(
          child: Text(category.CategoryName,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white
          )),
        ),
      ),
    );
  }
}