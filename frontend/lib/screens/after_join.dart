import 'package:flutter/material.dart';

import '../tabs/Page4.dart';
class afterJoin extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    return Scaffold(
      body:
      ListView(children: <Widget>[
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(30),
              ),
              Text(
                '회원가입이\n완료되었습니다!',
                style: TextStyle(fontFamily: "Inter-ExtraBold", fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(15),
              ),

              Padding(
                padding: EdgeInsets.all(18),
              ),
            ],
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => LoginPage(),
            ));
          },
          child: const Text('로그인'),
        ),
      ],
        physics: AlwaysScrollableScrollPhysics(),
      ),);}}
