import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'i am title',
      home:Scaffold(
        appBar: AppBar(title:Text('SingleChildScrollView')),
        body:Column(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Text('hello flutter' * 100)
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Text('hello flutter' * 100)
                ],
              ),
            ),
          ],
        )
      )
    );
  }
}