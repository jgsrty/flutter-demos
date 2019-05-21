import 'package:flutter/material.dart';

void main() => runApp(TextWidget());

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'flutter demo',
      theme:ThemeData(
        primaryColor: Colors.blue,
      ),
      home:Scaffold(
        appBar: AppBar(title:Text('flutter UI基础widget -- 文本')),
        // body:Text(
        //   'hello text',
        //   style:TextStyle(
        //     color:Colors.red,
        //     fontSize: 20.0,
        //     background:new Paint()..color = Colors.yellow
        //   )
        // )
        body:RichText(
          text:TextSpan(
            text:'hello',style:TextStyle(color:Colors.black),
            children:[
              TextSpan(text:' hello',style:TextStyle(color:Colors.blue)),
              TextSpan(text:' richText',style:TextStyle(color:Colors.red)),
            ]
          )
        )
      )
    );
  }
}