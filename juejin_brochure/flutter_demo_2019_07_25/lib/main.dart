import 'package:flutter/material.dart';

void main() => runApp(MyApp('myApp'));

class MyApp extends StatefulWidget {
  String content;

  MyApp(this.content);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool isShowText = true;

  void increment(){
    setState((){
      widget.content += 'd';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'app title',
      theme:ThemeData(
        primarySwatch:Colors.blue
      ),
      home:Scaffold(
        appBar: AppBar(title:Text('StateFulWeight & state')),
        body:Center(
          child:GestureDetector(
            child:isShowText?Text(widget.content):Text('empty'),
            onTap:increment
          ),
        )
      )
    );
  }
}