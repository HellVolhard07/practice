import 'package:flutter/material.dart';

class TopCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0,),
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: [
          // Top Image
          ClipRRect(
              borderRadius: BorderRadius.circular(
                20.0,
              ),
              child: Container(
                height: 40.0,
                child: Image.network(
                    "https://www.clipartmax.com/png/middle/29-291445_blood-drop-png-image-blood-drop-clipart.png"),
              )),
          SizedBox(width: 10.0,),
          // Onboarding Card
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi John.",
                style: TextStyle(
                  fontSize: 28.0,
                ),
              ),
              Text(
                "Let's check if everything is okay with you.",
                // style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ],
      ),
    );
  }
}
