import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: Colors.blue,),
margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Row(
        children: [
          Text("Chat with Kyle"),
          Spacer(),
          Icon(Icons.ac_unit)],
      ),
    );
  }
}

// ListTile(
// contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0),
// tileColor: Colors.red,
// title: Text(
// "Chat with Kyle",
// style: TextStyle(
// fontSize: 18.0,
// fontWeight: FontWeight.w600,
// ),
// ),
// trailing: Icon(
// Icons.ac_unit,
// ),
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(
// 10.0,
// ),
// ),
// );
