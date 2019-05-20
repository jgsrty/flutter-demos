import 'package:flutter/material.dart';
// import 'expansion_tile_demo.dart';
import 'expansion_pannel_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'material demo',
      theme:ThemeData.dark(),
      // home:ExpansionTileDemo()
      home:ExpansionPannelList()
    );
  }
}

