import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 3 / 2,
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map(
              (catData) => CategoryItem(
                catData.id,
                catData.title,
                catData.color,
              ),
            )
            .toList(),
        /*gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //Slivers are scrollable areas on screen
          maxCrossAxisExtent: 200, //200 per item
          childAspectRatio: 3 / 2, //300 height
          crossAxisSpacing: 20, //Distance between items in grid
          mainAxisSpacing: 20,
        ),*/
    );
  }
}
