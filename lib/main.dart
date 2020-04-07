import 'package:flutter/material.dart';
import 'screens/tabController.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'SVCE Calculator',
    home: TabbedPage(),
    theme: ThemeData(
        textTheme: TextTheme(
          title: TextStyle(color: Colors.purple)
        ),
        // brightness: Brightness.dark,
        // primaryColor: Colors.white,
        // accentColor: Colors.white,
        // buttonColor: Colors.purple,
        ),
  ));
}
