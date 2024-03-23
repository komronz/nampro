import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '/core/data/safety_models.dart';
import '/core/widgets/w_base_scaffold.dart';
import '../widgets/w_category_item.dart';

@RoutePage()
class CategoriesPage extends StatelessWidget {
  final String title;
  final List<Category> categories;

  const CategoriesPage({
    super.key,
    required this.categories,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: title,
      child: ListView(
        children: List.generate(
          categories.length,
          (index) => WCategoryItem(category: categories[index]),
        ),
      ),
    );
  }
}
