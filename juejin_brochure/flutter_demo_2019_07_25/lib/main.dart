import 'package:flutter/material.dart';

main(){
  runApp(MyApp(
    items: List<String>.generate(100,(i)=>'item $i'),
  ));
}

class MyApp extends StatelessWidget {

  final List<String> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'i am title',
      home:Scaffold(
        appBar: AppBar(title:Text('SingleChildScrollView&ListView')),
        // body:Column(
        //   children: <Widget>[
        //     SingleChildScrollView(
        //       scrollDirection: Axis.horizontal,
        //       child: Row(
        //         children: <Widget>[
        //           Text('hello flutter' * 100)
        //         ],
        //       ),
        //     ),
        //     SingleChildScrollView(
        //       scrollDirection: Axis.horizontal,
        //       child: Row(
        //         children: <Widget>[
        //           Text('hello flutter' * 100)
        //         ],
        //       ),
        //     ),
        //   ],
        // )
        body:ListView.builder(
          // itemCount:items.length,
          itemBuilder:(context,index){
            return ListTile(
              title:Text('${items[index]}')
            );
          },
          //infinity
          // itemBuilder: (BuildContext context, int index) {
          //   return ListTile(title: Text('Title $index'),);
          // },
          
          // separatorBuilder: (context, index) {
          //   return Container(
          //     constraints:BoxConstraints.tightFor(height:10),
          //     color:Colors.orange,
          //   );
          // }
          // children: <Widget>[
          //   ListTile(title:Text('title1')),
          //   ListTile(title:Text('title11')),
          //   ListTile(title:Text('title111')),
          //   ListTile(title:Text('title1111')),
          //   ListTile(title:Text('title11111')),
          //   ListTile(title:Text('title11')),
          //   ListTile(title:Text('title111')),
          //   ListTile(title:Text('title1111')),
          //   ListTile(title:Text('title11111')),
          //   ListTile(title:Text('title111111')),
          //   ListTile(title:Text('title1')),
          //   ListTile(title:Text('title11')),
          //   ListTile(title:Text('title111')),
          //   ListTile(title:Text('title1111')),
          //   ListTile(title:Text('title11111')),
          //   ListTile(title:Text('title111111')),
          // ],
        )
      )
    );
  }
}