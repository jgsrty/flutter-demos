import 'package:flutter/material.dart';

void main() => runApp(FormWidget());

class FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _userGender = '男';
  String _userName;
  String _userPassword;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home:Scaffold(
        appBar: AppBar(title:Text('flutter UI基础widget -- Form')),
        body:Form(
          key:_formKey,
          child:Column(
            children: <Widget>[
              TextFormField(
                decoration:InputDecoration(hintText:'用户名'),
                validator:(value){
                  if(value?.length<=5){
                    return '用户名必须大于5个字符';
                  }
                },
                onSaved:(value){
                  _userName = value;
                }
              ),
              TextFormField(
                decoration: InputDecoration(hintText:'密码'),
                obscureText: true,
                validator:(value){
                  if(value?.length<=8){
                    return '密码必须大于8个字符';
                  }
                },
                onSaved:(value){
                  _userPassword = value;
                }
              ),
              DropdownButtonFormField<String>(
                value:_userGender,
                items:['男','女'].map((label)=>DropdownMenuItem(
                  child:Text(label),
                  value:label,
                )).toList(),
                onChanged: (value){
                  setState(() => {
                    _userGender = value
                  });
                },
                onSaved: (value){
                  _userGender = value;
                },
              ),
              RaisedButton(
                child:Text('注册'),
                onPressed:(){
                  if(_formKey.currentState.validate()){
                    _formKey.currentState.save();
                    print(_userGender);
                    print(_userName);
                    print(_userPassword);
                  }
                }
              ),
              RaisedButton(
                child:Text('重置'),
                onPressed: (){
                  _formKey.currentState.reset();
                },
              )
            ],
          )
        )
      )
    );
  }
}
// void main() => runApp(TextFieldWidget());

// class TextFieldWidget extends StatelessWidget {
//   final TextEditingController _controller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Flutter Demo",
//       theme: ThemeData(
//         primaryColor: Colors.blue,
//       ),
//       home:Scaffold(
//         appBar: AppBar(title:Text('flutter UI基础widget -- input&&form')),
//         body:TextField(
//           controller: _controller,
//         )
//       )
//     );
//   }
// }
