import 'package:flutter/material.dart';
import 'HotWidget.dart';
import 'MoviesWidget.dart';
import 'MineWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter Douban',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: MyHomePage(title: '豆瓣电影'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}):super(key:key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;

  final _widgetItems = [HotWidget(),MoviesWidget(),MineWidget()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: _widgetItems[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(icon:Icon(Icons.school),title:Text('热映')),
          BottomNavigationBarItem(icon:Icon(Icons.panorama_fish_eye),title:Text('找片')),
          BottomNavigationBarItem(icon:Icon(Icons.people),title:Text('俺的')),
        ],
        currentIndex:_selectedIndex,
        fixedColor:Colors.black,
        type:BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      )
    );
  }

  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
    });
  }
}