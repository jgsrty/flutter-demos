import 'package:flutter/material.dart';

void main() => runApp(ShowPersistentBottomSheet());

class ShowPersistentBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'test',
      home:Scaffold(
        appBar: AppBar(title:Text('flutter UI widget -- BootomSheet')),
        body:CustomShowPersistentBottomSheet()
      )
    );
  }
}

class CustomShowPersistentBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child:Text('showBottomSheet'),
      onPressed: (){
        // showBottomSheet(
        //   context:context,
        //   builder:(context) => CustomBottomSheet()
        // );
        showModalBottomSheet(
          context:context,
          builder:(context) => CustomBottomSheet()
        );
      },
    );
  }
}

class CustomBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: (){},
      builder:(context) => Container(
        height:100.0,
        color:Colors.blue,
        child:Center(
          child:RaisedButton(
            child:Text('dismissBottomSheet'),
            onPressed: (){
              Navigator.of(context).pop();
            },
          )
        )
      )
    );
  }
}