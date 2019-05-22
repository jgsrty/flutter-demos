import 'package:flutter/material.dart';

void main() => runApp(PopMenuButtonWidget());

class PopMenuButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home:Scaffold(
        appBar: AppBar(title:Text('flutter UI基础Widget -- menu')),
        body: PopupMenuButton<MenuItem>(
          child:Text('更多'),
          onSelected:(MenuItem result){
            print(result);
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<MenuItem>>[
            const PopupMenuItem<MenuItem>(
              value:MenuItem.menuA,
              child:Text('menu A')
            ),
            const PopupMenuItem<MenuItem>(
              value: MenuItem.menuB,
              child: Text('menu B'),
            ),
            const PopupMenuItem<MenuItem>(
              value: MenuItem.menuC,
              child: Text('menu C'),
            ),
            const PopupMenuItem<MenuItem>(
              value: MenuItem.menuD,
              child: Text('menu D'),
            ),
          ],
        )
      )
    );
  }
}

enum MenuItem { menuA, menuB, menuC, menuD }