import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/categorys/card2_listView.dart';
import 'package:news_app/models/result_model.dart';
import 'package:news_app/services/news_services.dart';

class news_listViwe_builder extends StatefulWidget {
  const news_listViwe_builder({super.key, required this.categ});
  final String categ;

  @override
  State<news_listViwe_builder> createState() => _news_listViwe_builderState();
}

class _news_listViwe_builderState extends State<news_listViwe_builder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices(dio: Dio()).getGeneralNews(categ: widget.categ);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ResultModel>>(
      future: future,
      builder: (context, Snapshot) {
        if (Snapshot.hasData) {
          return card2Listview(result: Snapshot.data!);
        } else if (Snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Text('Oops there were an error, try later!'),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
    // return isLoading
    //     ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
    //     : result.isNotEmpty
    //     ? card2Listview(result: result)
    //     : SliverToBoxAdapter(
    //       child: Text('Oops there were an error, try later!'),
    //     );
  }
}
