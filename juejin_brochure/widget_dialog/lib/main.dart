import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(ShowAboutDialogWidget());

class ShowAboutDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title:Text('flutter UI基础widget -- AboutDialog')),
        body:CustomAboutDialog()
      )
    );
  }
}

class CustomAboutDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child:Text("About Dialog"),
      onPressed: (){
        // showAboutDialog(
        //   context: context,
        //   applicationName:'flutter -- dialog 对话框.',
        //   applicationVersion: '1.0.0'
        // );
        showDialog(
          context: context,
          // builder: (context) => SimpleDialog(
          //   title: Text('simple dialog'),
          //   children: <Widget>[
          //     SimpleDialogOption(
          //       child:Text('ok'),
          //       onPressed:(){
          //         Navigator.of(context).pop();
          //       }
          //     ),
          //     SimpleDialogOption(
          //       child:Text('cancel'),
          //       onPressed: (){
          //         Navigator.of(context).pop();
          //       },
          //     )
          //   ],
          // )
          // builder:(context) => AlertDialog(
          //   title:Text('alertDialog'),
          //   content:SingleChildScrollView(
          //     child:ListBody(
          //       children: <Widget>[
          //         Text('this is an alert dialog'),
          //         Text('add two options.')
          //       ],
          //     )
          //   ),
          //   actions: <Widget>[
          //     FlatButton(
          //       child:Text('OK'),
          //       onPressed: (){
          //         Navigator.of(context).pop();
          //       },
          //     ),
          //     FlatButton(
          //       child:Text('Cancel'),
          //       onPressed: (){
          //         Navigator.of(context).pop();
          //       },
          //     )
          //   ],
          // )
          // builder:(context) => CustomAlertDialog()
          builder:(context) => CustomCupertinoDialog()
        );
      },
    );
  }
}

class CustomAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title:Text('alertDialog'),
      content:SingleChildScrollView(
        child:ListBody(
          children: <Widget>[
            Text('this is an alert dialog'),
            Text('add two options.')
          ],
        )
      ),
      actions: <Widget>[
        FlatButton(
          child:Text('OK'),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child:Text('Cancel'),
          onPressed: (){
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}

class CustomCupertinoDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title:Text('CupertinoAlertDialog'),
      content:Text('this is a cupertinoAlertDialog'),
      actions: <Widget>[
        CupertinoDialogAction(
          child:Text('OK'),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        CupertinoDialogAction(
          child:Text('Cancel'),
          onPressed: (){
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}