import 'package:flutter/material.dart';

void main() => runApp(ImageWidget());

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'flutter demo',
      theme:ThemeData(
        primaryColor: Colors.blue,
      ),
      home:Scaffold(
        appBar: AppBar(title:Text('flutter UI基础widget --image&&icon')),
        // body:Center(
        //   // child:Image.asset('images/flutter.png',fit:BoxFit.cover)
        //   child:Image.network('https://rtyxmd.github.io/assets/img/02.9e5f0bff.jpg')
        // )
        body:Icon(
          Icons.android,
          size:50.0,
          color:Colors.green
        )
      )
    );
  }
}