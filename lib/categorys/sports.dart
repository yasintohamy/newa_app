import 'package:flutter/material.dart';
import 'package:news_app/categorys/custum_card1.dart';
import 'package:news_app/screens/sports_view.dart';

class Sports extends StatelessWidget {
  Sports({super.key});

  String image = 'assets/sports-balls.jpg';
  String name = 'sports';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => SportsView()),
        );
      },
      child: SizedBox(height: 100, child: custumcard1(img: image, name: name)),
    );
  }
}
