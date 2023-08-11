import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:frontend/screens/home.dart';
import '../screens/camera.dart';


class Page1 extends StatelessWidget {
  var mainpage = HomeScreen();
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            '검색창을 눌러 알약을 촬영하세요.',
            style: TextStyle(
                fontFamily: "Inter-ExtraBold",
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.all(18),
          ),
          IconButton(
              icon: Image.asset(
                "images/click_camera.png",
                width: 511,
                height: 513,
              ),
              iconSize: 300.0,

            onPressed: () async => await Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => runCamera())),
                 ),

        ],
      ),
    );
  }
}
