import 'package:flutter/material.dart';

class ExpansionPannelList extends StatefulWidget {
  @override
  _ExpansionPannelListState createState() => _ExpansionPannelListState();
}

class _ExpansionPannelListState extends State<ExpansionPannelList> {

  List<int> mList;
  List<ExpandStateBean> expandStateList;
  _ExpansionPannelListState(){
    mList = new List();
    expandStateList = new List();
    for(int i=0;i<100;i++){
      mList.add(i);
      expandStateList.add(ExpandStateBean(i,false));
    }
  }

  _setCurrentIndex(int index, isExpand){
    setState(() {
      expandStateList.forEach((item){
        if(item.index == index){
          item.isOpen = !isExpand;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('expansion pannel list')),
      body:SingleChildScrollView(
        child:ExpansionPanelList(
          expansionCallback: (index,bol){
            _setCurrentIndex(index,bol);
          },
          children:mList.map((index){
            return ExpansionPanel(
              headerBuilder: (context,isExpand){
                return ListTile(
                  title:Text('list is No.$index')
                );
              },
              body:ListTile(
                title:Text('expansion is No.$index')
              ),
              isExpanded: expandStateList[index].isOpen
            );
          }).toList()
        )
      )
    );
  }
}

class ExpandStateBean{
  var isOpen;
  var index;
  ExpandStateBean(this.index,this.isOpen);
}