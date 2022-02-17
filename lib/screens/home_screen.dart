import 'package:flutter/material.dart';
import 'package:practice/widgets/home_screen/app_drawer.dart';
import 'package:practice/widgets/home_screen/chat_card.dart';
import 'package:practice/widgets/home_screen/heath_card_caraousal.dart';
import 'package:practice/widgets/home_screen/recommendation_listview_builder.dart';
import 'package:practice/widgets/home_screen/top_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hamelo"),
      ),
      drawer: AppDrawer(),
      body: Container(
        height: mediaQuery.height,
        // color: Colors.amber,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white,
            Colors.amber,
          ],
        )),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopCard(),
              ChatCard(),
              CarouselWithIndicatorDemo(),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Text("Top recommendations")),
              SizedBox(
                height: 12.0,
              ),
              Container(
                height: mediaQuery.height * 0.4,
                child: RecommendationListView()
              )
            ],
          ),
        ),
      ),
    );
  }
}
// ListView(
// scrollDirection: Axis.horizontal,
// children: [
// RecommendationCard(mediaQuery: mediaQuery),
// RecommendationCard(mediaQuery: mediaQuery),
// RecommendationCard(mediaQuery: mediaQuery),
// RecommendationCard(mediaQuery: mediaQuery),
//
// ],
// ),