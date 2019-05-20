import 'package:flutter/material.dart';

/** 根据用户输入改变widget */
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  void _increment(){
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CounterIncrementor(onPressed: _increment,),
        CounterDisplay(count:_counter)
      ],
    );
  }
}

class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});
  final int count;
  @override
  Widget build(BuildContext context) {
    return Text('Count:$count');
  }
}

class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child:Text('Increment')
    );
  }
}


/** 使用material组件 */
void main(){
  runApp(MaterialApp(
    title:'flutter tutorial',
    home:TutorialHome()
  ));
}
class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
          icon:Icon(Icons.menu),
          onPressed: (){},
        ),
        title:Text('Example title'),
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.search),
            onPressed: (){},
          )
        ],
      ),
      // body:Center(
      //   child:Text('hello,world.')
      // ),
      body:Counter(),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.add),
        onPressed: (){},
      ),
    );
  }
}

// class MyButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap:(){
//         print('myBUtton was tapped');
//       },
//       child:Container(
//         height:36.0,
//         padding:const EdgeInsets.all(8.0),
//         margin:const EdgeInsets.symmetric(horizontal: 8.0),
//         decoration:BoxDecoration(
//           borderRadius:BorderRadius.circular(5.0),
//           color:Colors.lightGreen
//         ),
//         child:Center(
//           child:Text('Engage')
//         )
//       )
//     );
//   }
// }



/** 使用widget组件 */
// void main(){
//   runApp(MaterialApp(
//     title:'my app',
//     home:MyScaffold()
//   ));
// }

// class MyScaffold extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child:Column(
//         children: <Widget>[
//           MyAppBar(
//             title:Text('example title',style:Theme.of(context).primaryTextTheme.title),
//           ),
//           Expanded(
//             child:Center(
//               child:Text('hello, world~')
//             )
//           )
//         ],
//       )
//     );
//   }
// }

// class MyAppBar extends StatelessWidget {
//   MyAppBar({this.title});
//   final Widget title;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height:56.0,
//       padding:const EdgeInsets.symmetric(horizontal:8.0),
//       decoration:new BoxDecoration(color:Colors.blue),
//       child:Row(
//         children: <Widget>[
//           IconButton(
//             icon:Icon(Icons.menu),
//             tooltip: 'navigation menu',
//             onPressed: (){},
//           ),
//           Expanded(child: title,),
//           IconButton(
//             icon:Icon(Icons.search),
//             tooltip: 'search',
//             onPressed: (){},
//           )
//         ],
//         )
//     );
//   }
// }