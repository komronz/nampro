class Safety {
  final String title;
  final List<Category> categories;
  final String icon;

  Safety({
    required this.title,
    required this.categories,
    required this.icon,
  });
}

class Category {
  final String title;
  final String icon;
  final SafetyBody body;

  Category({
    required this.title,
    required this.icon,
    required this.body,
  });
}

class SafetyBody {
  final List<Item>? infoItems;
  final List<Item>? adviceItems;
  final List<String>? images;

  SafetyBody({
    this.infoItems,
    this.adviceItems,
    this.images,
  });
}

class Item {
  final String title;
  final String? subtitle;
  final List<String>? texts;

  Item({
    required this.title,
    this.subtitle,
    this.texts,
  });
}

