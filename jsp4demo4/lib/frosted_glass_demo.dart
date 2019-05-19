import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedGlassDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:<Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child:Image.network('https://i2.hdslb.com/bfs/archive/9418519f8f4e8e44063d6a4b9690a3ad0a281ff9.jpg@336w_190h.webp')
          ),
          Center(
            child:ClipRect(
              child:BackdropFilter(
                filter:ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                child:Opacity(
                  opacity: 0.5,
                  child:Container(
                    width:500.0,
                    height:700.0,
                    decoration: BoxDecoration(color:Colors.grey.shade200),
                    child:Center(
                      child:Text(
                        'rty',
                        style:Theme.of(context).textTheme.display3
                      )
                    )
                  )
                )
              )
            )
          )
        ]
      )
    );
  }
}