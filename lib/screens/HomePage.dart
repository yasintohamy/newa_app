import 'package:flutter/material.dart';
import 'package:news_app/categorys/categroisListvie.dart';
import 'package:news_app/categorys/news_listView_builder.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News \n', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              'Pulse',
              style: TextStyle(
                color: Colors.amberAccent,
                fontWeight: FontWeight.w700,
                fontSize: 28,
              ),
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: categroisListvie()),
            SliverToBoxAdapter(child: SizedBox(height: 34)),
            news_listViwe_builder(categ: "top"),
          ],
        ),
      ),

      // body: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 12),
      //   child: Column(
      //     children: [
      //       categroisListvie(),
      //       SizedBox(height: 34),
      //       Expanded(child: card2Listview()),
      //     ],
      //   ),
      // ),
    );
  }
}
