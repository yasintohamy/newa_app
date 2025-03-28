import 'package:flutter/material.dart';

class custumcard1 extends StatelessWidget {
  const custumcard1({super.key, required this.img, required this.name});
  final String img;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
        ),
        height: 100,
        width: 170,
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
