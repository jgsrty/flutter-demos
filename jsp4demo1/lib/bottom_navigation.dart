import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/email_screen.dart';
import 'pages/pages_screen.dart';
import 'pages/airplay_screen.dart';

class BottomNavgationWidget extends StatefulWidget {
  @override
  _BottomNavgationWidgetState createState() => _BottomNavgationWidgetState();
}

class _BottomNavgationWidgetState extends State<BottomNavgationWidget> {
  final _bottomNavigationColor = Colors.blue;

  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState(){
    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(AirPlayScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(
            icon:Icon(
              Icons.home,
              color:_bottomNavigationColor,
            ),
            title:Text(
              'Home',
              style:TextStyle(color:_bottomNavigationColor)
            )
          ),
          BottomNavigationBarItem(
            icon:Icon(
              Icons.email,
              color:_bottomNavigationColor,
            ),
            title:Text(
              'Email',
              style:TextStyle(color:_bottomNavigationColor)
            )
          ),
          BottomNavigationBarItem(
            icon:Icon(
              Icons.pages,
              color:_bottomNavigationColor,
            ),
            title:Text(
              'Pages',
              style:TextStyle(color:_bottomNavigationColor)
            )
          ),
          BottomNavigationBarItem(
            icon:Icon(
              Icons.airplay,
              color:_bottomNavigationColor,
            ),
            title:Text(
              'airplay',
              style:TextStyle(color:_bottomNavigationColor)
            )
          ),
        ],
        currentIndex: _currentIndex,
        onTap:(int index){
          setState((){
            _currentIndex = index;
          });
        }
      ),
    );
  }
}