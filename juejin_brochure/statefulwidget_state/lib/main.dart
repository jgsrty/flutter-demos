import 'package:flutter/material.dart';

void main() => runApp(MyApp('hello flutter'));

class MyApp extends StatefulWidget {
  String content;
  MyApp(this.content);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isShowText = true;
  void increment(){
    setState(() {
     widget.content += 'rty'; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'flutter demo',
      theme:ThemeData(
        primarySwatch:Colors.blue
      ),
      home:Scaffold(
        appBar: AppBar(title:Text('statefulWidget_state')),
        body:Center(
          child:GestureDetector(
            child:isShowText?Text(widget.content):null,
            onTap:increment
          )
        )
      )
    );
  }
}