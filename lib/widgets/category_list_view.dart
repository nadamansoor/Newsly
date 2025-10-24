import 'package:flutter/material.dart';
import 'package:newsly/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)
      {
        return Padding(
          padding: const EdgeInsets.all(2),
          child: CategoryCard(),
        );
      }
      ),
    );
  }
}