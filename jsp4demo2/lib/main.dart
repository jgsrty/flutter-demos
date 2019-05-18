import 'package:flutter/material.dart';
import 'bottom_app_bar_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'flutter demo2',
      theme:ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home:BottomAppBarDemo(),
    );
  }
}