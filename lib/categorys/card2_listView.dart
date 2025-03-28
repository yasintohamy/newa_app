// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:news_app/categorys/card2.dart';
import 'package:news_app/models/result_model.dart';

class card2Listview extends StatelessWidget {
  final List<ResultModel> result;
  const card2Listview({required this.result});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: result.length, (
        context,
        index,
      ) {
        return Padding(
          padding: EdgeInsets.only(bottom: 34),
          child: Card2(resultModel: result[index]),
        );
      }),
    );
  }
}
