import 'package:flutter/material.dart';
import 'package:practice/models/recommendation_model.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    Key? key,
    required this.mediaQuery,
    required this.model
  }) : super(key: key);

  final Size mediaQuery;
  final RecommendationModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mediaQuery.width * 0.40,
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 20.0,
      ),
      margin: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16.0,
        ),
        color: Colors.amber,
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            model.title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              height: 100.0,
              child: Image.network(
                  model.imageURL),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.black),
              minimumSize: MaterialStateProperty.all(Size.zero),
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 6.0,
                ),
              ),
            ),
            child: Text(
              model.buttonTitle,
              style: TextStyle(
                  fontWeight: FontWeight.w300, fontSize: 10.0),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
