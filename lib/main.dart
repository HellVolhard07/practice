import 'package:flutter/material.dart';
import 'package:practice/screens/home_screen.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice App',
      debugShowCheckedModeBanner: false,
      initialRoute: homeScreen,
      routes: {
        homeScreen: (_) => HomeScreen(),
      },
    );
  }
}