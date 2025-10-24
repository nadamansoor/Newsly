import 'package:flutter/material.dart';
import 'package:newsly/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

   final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}