import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Image.asset('images/RtyXmd.png')
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     title:'页面跳转返回数据',
//     home:FirstPage()
//   ));
// }

// class FirstPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:Text('找小姐姐要电话')
//       ),
//       body:Center(
//         child:RouteButton()
//       )
//     );
//   }
// }

// class RouteButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return RaisedButton(
//       onPressed:(){
//         _navigateToXiaojiejie(context);
//       },
//       child:Text('去找小姐姐')
//     );
//   }
//   _navigateToXiaojiejie(BuildContext context) async{
//     final result = await Navigator.push(
//       context,
//       MaterialPageRoute(builder:(context)=>Xiaojiejie())
//     );
//     Scaffold.of(context).showSnackBar(SnackBar(content:Text('$result')));
//   }
// }

// class Xiaojiejie extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:Text('我是小姐姐')
//       ),
//       body:Center(
//         child:Column(
//           children: <Widget>[
//             RaisedButton(
//               child:Text('大长腿小姐姐'),
//               onPressed: (){
//                 Navigator.pop(context,'大长腿小姐姐：15099929292');
//               },
//             ),
//             RaisedButton(
//               child:Text('小蛮腰小姐姐'),
//               onPressed: (){
//                 Navigator.pop(context,'小蛮腰小姐姐:：17333928190');
//               },
//             )
//           ],
//         )
//       )
//     );
//   }
// }

// class Product{
//   final String title;//商品标题
//   final String description;//商品描述
//   Product(this.title,this.description);
// }

// void main(){
//   runApp(MaterialApp(
//     title:'导航数据传递接收',
//     home:ProductList(
//       products:List.generate(
//         20,
//         (i)=>Product('商品 $i','这是一个商品详情，编号：$i')
//       )
//     )
//   ));
// }

// class ProductList extends StatelessWidget {

//   final List<Product> products;
//   ProductList({Key key,@required this.products}):super(key:key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:AppBar(title:Text('商品列表')),
//       body:ListView.builder(
//         itemCount:products.length,
//         itemBuilder:(context,index){
//           return ListTile(
//             title:Text(products[index].title),
//             onTap:(){
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder:(context)=>ProductDetail(product:products[index])
//                 )
//               );
//             }
//           );
//         }
//       )
//     );
//   }
// }

// class ProductDetail extends StatelessWidget {

//   final Product product;
//   ProductDetail({Key key,@required this.product}):super(key:key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:AppBar(title:Text('${product.title}')),
//       body:Center(child: Text('${product.description}'),)
//     );
//   }
// }


// import 'package:flutter/material.dart';

// void main(){
//   runApp(MaterialApp(
//     title:'导航演示01',
//     home:new FirstScreen()
//   ));
// }

// class FirstScreen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar:AppBar(
//         title:Text('导航页面')
//       ),
//       body:Center(
//         child:RaisedButton(
//           child:Text('查看商品详情页'),
//           onPressed: (){
//             Navigator.push(context,MaterialPageRoute(
//               builder:(cont)=>new SecondScreen()
//             ));
//           },
//         )
//       )
//     );
//   }
// }

// class SecondScreen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(title:Text('商品详情页')),
//       body:Center(
//         child:RaisedButton(
//           child:Text('返回'),
//           onPressed: (){
//             Navigator.pop(context);
//           },
//         )
//       )
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     var stack = new Stack(
//       alignment: const FractionalOffset(0.5, 0.8),
//       children: <Widget>[
//         new CircleAvatar(
//           backgroundImage: new NetworkImage('https://jgsrty.github.io/img/lion.png'),
//           radius:100.0
//         ),
//         // new Container(
//         //   decoration:new BoxDecoration(
//         //     color:Colors.lightBlue,
//         //   ),
//         //   padding:EdgeInsets.all(5.0),
//         //   child:Text('test')
//         // )
//         new Positioned(
//           top:10.0,
//           left:10.0,
//           child:new Text('rty.com')
//         ),
//         new Positioned(
//           bottom:10.0,
//           right:10.0,
//           child:new Text('xmd.com')
//         )
//       ],);
//     var card = new Card(
//       child:Column(
//         children:<Widget>[
//           ListTile(
//             title:Text('河南省登封市北环路1',style:TextStyle(fontWeight:FontWeight.w500)),
//             subtitle:Text('data1'),
//             leading:new Icon(Icons.account_box,color:Colors.lightBlue)
//           ),
//           new Divider(),
//           ListTile(
//             title:Text('河南省登封市北环路2',style:TextStyle(fontWeight:FontWeight.w500)),
//             subtitle:Text('data3'),
//             leading:new Icon(Icons.account_box,color:Colors.lightBlue)
//           ),
//           new Divider(),
//           ListTile(
//             title:Text('河南省登封市北环路2',style:TextStyle(fontWeight:FontWeight.w500)),
//             subtitle:Text('data3'),
//             leading:new Icon(Icons.account_box,color:Colors.lightBlue)
//           )
//         ]
//       )
//     );
//     return MaterialApp(
//       title:'ROw Widget demo',
//       home:Scaffold(
//         /** 水平布局 */
//         // appBar:new AppBar(
//         //   title:new Text('水平方向布局'),
//         // ),
//         // body:new Row(
//         //   children:<Widget>[
//         //     new RaisedButton(
//         //       onPressed:(){},
//         //       color:Colors.lightBlue,
//         //       child:new Text('blue Button')
//         //     ),
//         //     Expanded(child:new RaisedButton(
//         //       onPressed:(){},
//         //       color:Colors.redAccent,
//         //       child:new Text('red Button')
//         //     )),
//         //     new RaisedButton(
//         //       onPressed:(){},
//         //       color:Colors.orangeAccent,
//         //       child:new Text('orange Button')
//         //     )
//         //   ]
//         // )
//         /** 垂直布局 */
//         // appBar:new AppBar(
//         //   title:new Text('垂直布局')
//         // ),
//         // body:Center(
//         //   child:new Column(
//         //     mainAxisAlignment: MainAxisAlignment.center,
//         //     crossAxisAlignment: CrossAxisAlignment.center,
//         //     children: <Widget>[
//         //       Text('i am rty'),
//         //       Expanded(child: Text('i am studing flutter'),),
//         //       Text('i like coding'),
//         //     ],
//         //   )
//         // )
//         /** 层叠布局 */
//         // appBar:new AppBar(
//         //   title:new Text('层叠布局')
//         // ),
//         // body:Center(
//         //   child:stack
//         // )
//         /** 卡片布局 */
//         // appBar: new AppBar(
//         //   title:new Text('卡片布局')
//         // ),
//         // body:Center(
//         //   child:card
//         // )
//       )
//     );
//   }
// }