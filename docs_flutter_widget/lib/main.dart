import 'package:flutter/material.dart';

/** 整合所有 */
class Product{
  const Product({this.name});
  final String name;
}

typedef void CartChangedCallback(Product product, bool inCart);

class ShoppingListItem extends StatelessWidget {
  ShoppingListItem({Product product, this.inCart, this.onCartChanged})
  : product = product,
  super(key: new ObjectKey(product));

  final Product product;
  final bool inCart;
  final CartChangedCallback onCartChanged;

  Color _getColor(BuildContext context){
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context){
    if(!inCart) return null;
    return TextStyle(
      color:Colors.black54,
      decoration:TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap:(){
        onCartChanged(product, !inCart);
      },
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child:Text(product.name[0])
      ),
      title:Text(product.name, style: _getTextStyle(context))
    );
  }
}

class ShoppingList extends StatefulWidget {
  ShoppingList({Key key, this.products}) : super(key:key);
  final List<Product> products;
  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  Set<Product> _shoppingCart = new Set<Product>();

  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      if(inCart){
        _shoppingCart.add(product);
      } else {
        _shoppingCart.remove(product);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Shopping List')),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical:8.0),
        children: widget.products.map((Product product) {
          return ShoppingListItem(
            product:product,
            inCart: _shoppingCart.contains(product),
            onCartChanged: _handleCartChanged,
          );
        }).toList()
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title:'shopping app',
    home: ShoppingList(
      products:<Product>[
        Product(name:'eggs'),
        Product(name:'apple'),
        Product(name:'banana'),
        Product(name:'beef'),
      ]
    )
  ));
}


/** 根据用户输入改变widget */
// class Counter extends StatefulWidget {
//   @override
//   _CounterState createState() => _CounterState();
// }

// class _CounterState extends State<Counter> {
//   int _counter = 0;
//   void _increment(){
//     setState(() {
//       _counter++;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: <Widget>[
//         CounterIncrementor(onPressed: _increment,),
//         CounterDisplay(count:_counter)
//       ],
//     );
//   }
// }

// class CounterDisplay extends StatelessWidget {
//   CounterDisplay({this.count});
//   final int count;
//   @override
//   Widget build(BuildContext context) {
//     return Text('Count:$count');
//   }
// }

// class CounterIncrementor extends StatelessWidget {
//   CounterIncrementor({this.onPressed});
//   final VoidCallback onPressed;
//   @override
//   Widget build(BuildContext context) {
//     return RaisedButton(
//       onPressed: onPressed,
//       child:Text('Increment')
//     );
//   }
// }


// /** 使用material组件 */
// void main(){
//   runApp(MaterialApp(
//     title:'flutter tutorial',
//     home:TutorialHome()
//   ));
// }
// class TutorialHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading:IconButton(
//           icon:Icon(Icons.menu),
//           onPressed: (){},
//         ),
//         title:Text('Example title'),
//         actions: <Widget>[
//           IconButton(
//             icon:Icon(Icons.search),
//             onPressed: (){},
//           )
//         ],
//       ),
//       // body:Center(
//       //   child:Text('hello,world.')
//       // ),
//       body:Counter(),
//       floatingActionButton: FloatingActionButton(
//         child:Icon(Icons.add),
//         onPressed: (){},
//       ),
//     );
//   }
// }

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