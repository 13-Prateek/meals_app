import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widget/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView(
      padding: EdgeInsets.all(10),
      children: DUMMY_CATEGORIES
          .map((catData) =>
              CategoryItem(catData.color, catData.title, catData.id))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          maxCrossAxisExtent: 200),
    ));
  }
}
