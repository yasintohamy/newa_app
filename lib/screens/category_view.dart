import 'package:flutter/material.dart';
import 'package:news_app/categorys/news_listView_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categ});
  final String categ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(slivers: [news_listViwe_builder(categ: categ)]),
    );
  }
}
