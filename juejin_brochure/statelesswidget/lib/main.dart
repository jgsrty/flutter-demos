import 'package:flutter/material.dart';

void main() => runApp(MyApp('hello word'));

class MyApp extends StatelessWidget {
  final String content;
  MyApp(this.content);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'flutter demo',
      theme:ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
        appBar: AppBar(title:Text('test statelesswidget')),
        body:Center(
          child:Text(content)
        )
      )
    );
  }
}