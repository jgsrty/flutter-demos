import 'package:flutter/material.dart';
void main () => runApp(MyApp(
  items:new List.generate(1000,(i)=>'item $i')
));

class MyApp extends StatelessWidget{
  final List items;
  MyApp({Key key,@required this.items}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Text Widget',
      home:Scaffold(
        /** 25粉色字体带下划线 */
        // body:Center(
        //   child:Text('hello widget~hello widget~hello widget~hello widget~hello widget~hello widget~',
        //   textAlign: TextAlign.center,
        //   maxLines:1,
        //   overflow:TextOverflow.ellipsis,
        //   style: TextStyle(
        //     fontSize:25,
        //     color:Color.fromARGB(255, 255, 150, 150),
        //     decoration:TextDecoration.underline,
        //     decorationStyle:TextDecorationStyle.solid,
        //   )
        //   )
        // )
        /** Container容器组件使用 */
        // body:Center(
        //   child:Container(
        //     child:new Text('hello container',style:TextStyle(fontSize:40)),
        //     alignment:Alignment.center,
        //     // bottomCenter:下部居中对齐。
        //     // botomLeft: 下部左对齐。
        //     // bottomRight：下部右对齐。
        //     // center：纵横双向居中对齐。
        //     // centerLeft：纵向居中横向居左对齐。
        //     // centerRight：纵向居中横向居右对齐。
        //     // topLeft：顶部左侧对齐。
        //     // topCenter：顶部居中对齐。
        //     // topRight： 顶部居左对齐。
        //     width:500,
        //     height:400,
        //     color:Colors.lightBlue,
        //   )
        // )
        /** Container容器组件使用2 */
        // body:Center(
        //   child:Container(
        //     child:new Text('Hello Container2',style: TextStyle(fontSize: 40.0),),
        //     alignment: Alignment.topLeft,
        //     width:500.0,
        //     height:400.0,
        //     // color: Colors.lightBlue,
        //     // padding:const EdgeInsets.all(10.0)
        //     padding: const EdgeInsets.fromLTRB(10.0,30.0,0.0,0.0),
        //     margin:const EdgeInsets.all(10.0),
        //     decoration:new BoxDecoration(
        //       gradient:const LinearGradient(
        //         colors:[Colors.lightBlue,Colors.greenAccent,Colors.purple]
        //       ),
        //       border:Border.all(width:2.0,color:Colors.red)
        //     )
        //   ),
        // )
        /** Image图片组件的使用 */
        // body:Center(
        //   child:Container(
        //     child:new Image.network(
        //       'https://jgsrty.github.io/img/lion.png',
        //       scale:1.0
        //     ),
        //     width:300.0,
        //     height:200.0,
        //     color:Colors.lightBlue
        //   )
        // )
        /** ListView 列表组件简介 */
        // appBar:new AppBar(
        //   title:new Text('listView Widget')
        // ),
        // body:new ListView(
        //   children:<Widget>[
        //     new ListTile(
        //       leading:new Icon(Icons.access_time),
        //       title:new Text('access_time')
        //     ),
        //     new ListTile(
        //       leading:new Icon(Icons.account_balance),
        //       title:new Text('account_balance')
        //     ),
        //     new Image.network(
        //       'https://jgsrty.github.io/img/lion.png'
        //     )
        //   ]
        // )
        /** 横向列表使用 */
        // body:Center(
        //   child:Container(
        //     height:200.0,
        //     child:MyList()
        //   )
        // )
        /** 动态列表的使用 */
        // body:new ListView.builder(
        //   itemCount:items.length,
        //   itemBuilder:(context,index){
        //     return new ListTile(
        //       title:new Text('${items[index]}'),
        //     );
        //   }
        // )
        /** gridView网格列表组件 */
        body:GridView.count(
          padding:const EdgeInsets.all(20.0),
          crossAxisSpacing:10.0,
          crossAxisCount:3,
          children: <Widget>[
            // const Text('test text'),
            // const Text('test text2'),
            // const Text('test text3'),
            // const Text('test text4'),
            // const Text('test text5'),
            // const Text('test text6'),
            // const Text('test text7'),
            // const Text('test text8'),
            new Image.network('https://jgsrty.github.io/img/lion.png',fit:BoxFit.cover),
            new Image.network('https://jgsrty.github.io/img/lion.png',fit:BoxFit.cover),
            new Image.network('https://jgsrty.github.io/img/lion.png',fit:BoxFit.cover),
            new Image.network('https://jgsrty.github.io/img/lion.png',fit:BoxFit.cover),
            new Image.network('https://jgsrty.github.io/img/lion.png',fit:BoxFit.cover),
            new Image.network('https://jgsrty.github.io/img/lion.png',fit:BoxFit.cover),
            new Image.network('https://jgsrty.github.io/img/lion.png',fit:BoxFit.cover),
            new Image.network('https://jgsrty.github.io/img/lion.png',fit:BoxFit.cover),
            new Image.network('https://jgsrty.github.io/img/lion.png',fit:BoxFit.cover),
            new Image.network('https://jgsrty.github.io/img/lion.png',fit:BoxFit.cover),
          ],
        )
      )
    );
  }
}

class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ListView(
      scrollDirection:Axis.horizontal,
      children: <Widget>[
        new Container(
          width:180.0,
          color:Colors.lightBlue
        ), new Container(
          width:180.0,
          color: Colors.amber,
        ), new Container(
          width:180.0,
          color: Colors.deepOrange,
        ),new Container(
          width:180.0,
          color: Colors.deepPurpleAccent,
        ),
      ],
    );
  }
}