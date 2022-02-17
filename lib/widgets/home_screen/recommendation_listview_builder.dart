import 'package:flutter/material.dart';
import 'package:practice/models/recommendation_model.dart';
import 'package:practice/widgets/home_screen/recommendation_card.dart';

final List recommendationList = [
  RecommendationModel(
      title: "Exercise every morning at 8:00",
      imageURL:
          "https://www.clipartmax.com/png/middle/29-291445_blood-drop-png-image-blood-drop-clipart.png",
      buttonTitle: "Go to my goals"),
  RecommendationModel(
      title: "Exercise every morning at 8:00",
      imageURL:
      "https://www.clipartmax.com/png/middle/29-291445_blood-drop-png-image-blood-drop-clipart.png",
      buttonTitle: "Go to my goals"),
  RecommendationModel(
      title: "Exercise every morning at 8:00",
      imageURL:
      "https://www.clipartmax.com/png/middle/29-291445_blood-drop-png-image-blood-drop-clipart.png",
      buttonTitle: "Go to my goals"),
];

class RecommendationListView extends StatelessWidget {
  const RecommendationListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: recommendationList.length,
      itemBuilder: (context, index) {
        return RecommendationCard(mediaQuery: mediaQuery, model: recommendationList[index]);
      },
    );
  }
}
