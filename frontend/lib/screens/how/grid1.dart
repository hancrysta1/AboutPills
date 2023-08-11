import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:frontend/screens/home.dart';

class grid1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        builder: (context, snapshot) {
      return Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(
            color: Colors.black, //색변경
        ),
            leading: IconButton(
            onPressed: () {
              Navigator.pop(context);//뒤로가기
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.black),
            title: Text(''),
            backgroundColor: Colors.transparent,
            elevation: 0,
            ),
          body:ListView(
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                  const Text(
                  '의약품(약물)이란?',
                    style: TextStyle(
                        fontFamily: "Inter-ExtraBold",
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      Image.asset(
                        'images/capsule.png',width: 150,height: 150,),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),

                      const Text(
                        'WHO(국제보건기구)에서는 의약품을 사용자의 이익을 위해서 생리적 시스템 또는 질병상태를 변화시키거나 검토하기 위해서 사용되는 모든 물질 이라고 정의하고 있습니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '의약품의 기능',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '-부족한 요소의 보충 : 비타민류, 금속염류\n-호르몬 등 질병 및 감염의 방지 : 백신, 항혈청제 등 기능의 과대, 과소,\n-부전의 교정 : 강심제, 호르몬제, 혈압조절제 등\n-독소의 희석 및 제거 : 모르핀, 항시스타민제, 스테로이드제 등 해독제\n-진단 보조제 : 방사선 조영제\n-위장관 조영제 등 삶의 질 개선 : 항우울제, 성기능 개선제, 비만치료, 발모제 등',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 18,

                            fontWeight: FontWeight.normal),
                      ),

                      ],
                      ),
                )),
            ],
          ));});}
}
