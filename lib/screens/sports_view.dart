import 'package:flutter/material.dart';
import 'package:news_app/categorys/news_listView_builder.dart';
import 'package:news_app/screens/news_details.dart';

class SportsView extends StatefulWidget {
  const SportsView({super.key});

  @override
  State<SportsView> createState() => _SportsViewState();
}

class _SportsViewState extends State<SportsView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.article,
                  color: const Color.fromARGB(255, 114, 124, 10),
                ),

                text: 'General',
              ),
              Tab(
                icon: Icon(
                  Icons.sports_soccer_outlined,
                  color: const Color.fromARGB(255, 114, 124, 10),
                  size: 38,
                ),
                text: "Today's Matche",
              ),
              Tab(
                icon: Icon(
                  Icons.live_tv,
                  color: const Color.fromARGB(255, 114, 124, 10),
                  size: 32,
                ),
                text: 'Bein sports',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: SizedBox(height: 10)),
                news_listViwe_builder(categ: 'sports'),
              ],
            ),

            NewsDetails(link: 'https://onefootball.com/en/matches'),
            NewsDetails(link: 'https://www.beinsports.com/ar-mena'),
          ],
        ),
      ),
    );
  }
}
