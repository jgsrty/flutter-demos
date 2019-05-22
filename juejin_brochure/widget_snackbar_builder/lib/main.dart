import 'package:flutter/material.dart';

void main() => runApp(SnackBarBuilderWidget());

class SnackBarBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"flutter demo",
      theme:ThemeData(primaryColor:Colors.blue),
      home:Scaffold(
        appBar:AppBar(title:Text('flutter UI Widget -- snackBar && builder')),
        // body:RaisedButton(
        //   child:Text('show snackBar'),
        //   onPressed:(){
        //     Scaffold.of(context).showSnackBar(SnackBar(
        //       content:Text('SnackBar'),
        //       duration:Duration(seconds: 5)
        //     ));
        //   }
        // )
        // body:Builder(
        //   builder:(context) => RaisedButton(
        //     child:Text('show snackBar'),
        //     onPressed: (){
        //       Scaffold.of(context).showSnackBar(SnackBar(
        //         content:Text('SnackBar'),
        //         duration:Duration(seconds: 5)
        //       ));
        //     },
        //   )
        // )
        body:SnackBarWidget()
      )
    );
  }
}

class SnackBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child:Text('show SnackBar'),
      onPressed: (){
        Scaffold.of(context).showSnackBar(SnackBar(
          content:Text('SnackBar'),
          duration:Duration(seconds: 5)
        ));
      },
    );
  }
}