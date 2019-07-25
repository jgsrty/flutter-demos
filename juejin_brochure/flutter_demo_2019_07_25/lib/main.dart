import 'package:flutter/material.dart';

void main() => runApp(NewApp('newApp'));

class NewApp extends StatelessWidget {

  final String content;

  NewApp(this.content);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'i am title',
      home:Scaffold(
        body:Center(
          child:Text(content)
        )
      )
    );
  }
}