import 'package:flutter/material.dart';

import '../tabs/Page4.dart';
class afterLogin extends StatelessWidget {
  final String name;
  afterLogin({required this.name});

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
                name,
                style: TextStyle(fontFamily: "Inter-ExtraBold", fontSize: 30, fontWeight: FontWeight.bold),
              ),Text(
                '(님) 어서오세요.',
                style: TextStyle(fontFamily: "Inter-ExtraBold", fontSize: 20, fontWeight: FontWeight.bold),
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
          child: const Text('로그아웃'),
        ),
      ],
        physics: AlwaysScrollableScrollPhysics(),
      ),);}}
