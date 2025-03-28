import 'package:flutter/material.dart';
import 'package:news_app/categorys/card1.dart';
import 'package:news_app/categorys/sports.dart';
import 'package:news_app/models/card_model.dart';

class categroisListvie extends StatelessWidget {
  const categroisListvie({super.key});
  final List<carModel> cardmodel = const [
    carModel(image: 'assets/Business-la-gi-2.jpg', name: 'business'),

    carModel(image: 'assets/health.avif', name: 'Health'),
    carModel(image: 'assets/science.avif', name: 'science'),

    carModel(image: 'assets/technology.jpeg', name: 'technology'),
    carModel(image: 'assets/entertaiment.avif', name: 'entertainment'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cardmodel.length + 1,
        itemBuilder: (context, index) {
          if (index < cardmodel.length) {
            return card1(cardmod: cardmodel[index]);
          } else {
            return Sports();
          }
        },
      ),
    );
  }
}
