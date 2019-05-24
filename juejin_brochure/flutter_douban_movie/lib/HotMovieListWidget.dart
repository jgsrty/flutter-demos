import 'dart:convert';

import 'package:flutter/material.dart';
import 'HotMovieItemWidget.dart';
import 'HotMovieData.dart';
import 'package:http/http.dart' as http;

class HotMoviesListWidget extends StatefulWidget {
  String curCity;
  HotMoviesListWidget(String city){
    curCity = city;
  }

  @override
  _HotMoviesListWidgetState createState() => _HotMoviesListWidgetState();
}

class _HotMoviesListWidgetState extends State<HotMoviesListWidget> with AutomaticKeepAliveClientMixin{

  List<HotMovieData> hotMovies = new List<HotMovieData>();
  _getServerList() async{
    List<HotMovieData> serverDataList = new List();
    var response = await http.get('https://douban.uieee.com/v2/movie/in_theaters');
    if(response.statusCode == 200) {
      var responseJson = json.decode(response.body);
      for(dynamic data in responseJson['subjects']){
        HotMovieData hotMovieData = HotMovieData.fromJson(data);
        serverDataList.add(hotMovieData);
      }
      
      setState(() {
        hotMovies =  serverDataList;
      });
    }
  }
  

  @override
  void initState() {
    super.initState();
    _getServerList();
    // var data = HotMovieData('反贪风暴4', 6.3, '林德禄', '古天乐/郑嘉颖/林峯', 29013,
    //     'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2551353482.webp');
    // setState(() {
    //  hotMovies.add(data);
    //  hotMovies.add(data);
    //  hotMovies.add(data);
    //  hotMovies.add(data);
    //  hotMovies.add(data);
    //  hotMovies.add(data);
    // });
  }

  @override
  Widget build(BuildContext context) {
    if(hotMovies == null || hotMovies.isEmpty){
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return MediaQuery.removePadding(
      removeTop:true,
      context:context,
      child:ListView.separated(
        itemCount:hotMovies.length,
        itemBuilder: (context,index){
          return HotMovieItemWidget(hotMovies[index]);
        },
        separatorBuilder: (context, index){
          return Divider(
            height:1,
            color:Colors.black26
          );
        },
      )
    );
  }
  
  @override
  bool get wantKeepAlive => true;
}