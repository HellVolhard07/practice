import 'package:flutter/material.dart';

class HealthCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      padding: EdgeInsets.symmetric(
        horizontal: mediaQuery.width * 0.02,
        vertical: mediaQuery.height * 0.01,
      ),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.7),
            blurRadius: 6.0, // soften the shadow
            spreadRadius: 0.0, //extend the shadow
            offset: Offset(
              5.0, // Move to right 10  horizontally
              5.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 200.0,
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: Column(
              children: [
                Text(
                  "Blood test required",
                  style: TextStyle(fontSize: 24.0),
                ),
                Text(
                  "Find out whether you have risk factors for heart disease",
                ),
                SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 8.0,
                        ),
                      ),
                    ),
                    child: Text(
                      "Perform blood test",
                      style: TextStyle(
                          fontWeight: FontWeight.w300, fontSize: 12.0),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          // Health overview
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              width: 100.0,
              child: Image.network(
                  "https://www.clipartmax.com/png/middle/29-291445_blood-drop-png-image-blood-drop-clipart.png"),
            ),
          ),
        ],
      ),
    );
  }
}
