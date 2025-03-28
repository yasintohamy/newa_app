import 'package:flutter/material.dart';
import 'package:news_app/models/card_model.dart';
import 'package:news_app/screens/category_view.dart';

class card1 extends StatelessWidget {
  card1({super.key, required this.cardmod});
  final carModel cardmod;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(categ: cardmod.name);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(cardmod.image),
              fit: BoxFit.cover,
            ),
          ),
          height: 100,
          width: 170,
          child: Center(
            child: Text(
              cardmod.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
