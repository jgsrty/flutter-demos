import 'package:flutter/material.dart';

void main() => runApp(CustomScrollViewWidget());

class CustomScrollViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'test',
      home:Scaffold(
        appBar: AppBar(title:Text('CustomScrollViewWidget')),
        body:CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              pinned:true,
              expandedHeight:200.0,
              flexibleSpace:FlexibleSpaceBar(
                title:Text('demo')
              )
            ),
            SliverGrid(
              gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing:10.0,
                crossAxisSpacing:10.0,
                childAspectRatio:4.0
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index){
                  return Container(
                    alignment: Alignment.center,
                    color:Colors.teal[100 * (index % 9)],
                    child: Text('grid item $index')
                  );
                }
              )
            ),
          ],
        )
      )
    );
  }
}

// void main() => runApp(MyApp(
//   items:List<String>.generate(100, (i) => "item $i")
// ));

// class MyApp extends StatelessWidget {
//   final List<String> items;
//   MyApp({Key key, @required this.items}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title:'scroll views',
//       home:Scaffold(
//         appBar: AppBar(title:Text('scroll view -- ListView')),
//         body:ListView.separated(
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               title:Text('${items[index]}')
//             );
//           },
//           separatorBuilder:(context, index) {
//             return Container(
//               constraints:BoxConstraints.tightFor(height:2),
//               color:Colors.orange
//             );
//           }
//         ),
//       )
//     );
//   }
// }

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title:'scroll views',
//       home:Scaffold(
//         appBar: AppBar(title:Text('scroll view -- SingleChildScrollView')),
//         body:CustomSingleChildScrollView(),
//       )
//     );
//   }
// }

// class CustomSingleChildScrollView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection:Axis.horizontal,
//       child:Row(children: <Widget>[
//         Text('context ' * 100)
//       ],)
//     );
//   }
// }