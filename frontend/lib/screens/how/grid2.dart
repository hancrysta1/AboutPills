import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:frontend/screens/home.dart';

class grid2 extends StatelessWidget {
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
                  '약물이상반응이란?',
                    style: TextStyle(
                        fontFamily: "Inter-ExtraBold",
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      Image.asset(
                        'images/dizzy.png',width: 150,height: 150,),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '의약품 등을 정상적으로 사용하여 발생한 바람직하지 않고 의도하지 않은 반응 중에서 해당의약품과의 인과관계를 배제할 수 없는 경우에 이를 약물이상반응이라고 합니다. 아무리 용법∙용량에 맞게 약물을 사용했다고 해도 환자의 특성 또는 약물의 특성에 따라 약물 이상반응은 일어날 수 있습니다. 약물이상반응이 일어났다고 해서 무조건 그 약이 나쁜 것은 아닙니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '약물이상반응에는 \nType A 와 Type B \n두 종류가 있습니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '① Type A 이상반응 : 의약품 자체의 특성에 의해 발생\n② Type B 이상반응 : 환자의 개인적 특성에 의해 발생',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 18,

                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '의약품 부작용 발생시 어떻게 해야 하나요?',
                        style: TextStyle(
                          color: Colors.blue,
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '의약품을 사용하는 도중에 생각하지 못했던 증상이 나타나는 경우에는 가능한 빠른 시일 내에 의사 또는 약사와 상담하는 것이 좋습니다. 약에 의한 반응인지 질병 자체의 증상인지 확인 후 계속 복용 여부를 판단해야 합니다. 또한 한국의약품안전관리원 (http://www.drugsafe.or.kr 또는 ☎1644-6223) 을 통해 발생한 부작용을 자발적으로 신고할 수 있습니다.'
                        ,style: TextStyle(
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
