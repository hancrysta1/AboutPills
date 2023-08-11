import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:frontend/screens/home.dart';

class grid5 extends StatelessWidget {
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
                  '어르신의 안전하고, 효과적인 약 복용을 위한 10계명',
                    style: TextStyle(
                        fontFamily: "Inter-ExtraBold",
                        fontSize: 30,
                        color: Colors.cyan,
                        fontWeight: FontWeight.bold),
                  ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      Image.asset(
                        'images/oldman.png',width: 150,height: 150,),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '① 어르신의 경우 주로 [저용량] 부터 사용하며, 의사 및 약사의 지시에 따라야 합니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '② [용법]',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ': 질병 합병증이 많아서 복잡할 수 있으므로 표를 그려 잘 보이는 곳에 두고, 이에 따라 잊지 않고 약 복용을 합니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 22,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '③ [약물유해반응]',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ': 어르신의 경우 약물유해반응 발현 위험성이 크므로 발현 즉시 의사 또는 약사에게 알려야 합니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 22,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '④ [약의 형태]',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ': 외용제인지 내복제인지 확인하고, 약의 형태에 대한 복약지도를 받은 경우 기록해 두어야 합니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 22,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '⑤ [꾸준한 약복용]',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ': 대부분 만성질환을 앓는 경우가 많으므로, 처방된 약물을 꾸준히 복용했을 때 질환이 잘 조절됩니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 22,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '⑥ [약물 변경]',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ': 약물 복용을 중단하거나 추가로 약물을 복용하기 전에 반드시 의사나 약사와 먼저 상의합니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 22,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '⑦ [약물 보관]',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ': 약물은 일반적으로 직사광선이 비치지 않고, 서늘하며 건조한 곳에 보관합니다. 그러나 차광보관, 냉장보관 등의 지시사항이 있는 약은 이에 따라 보관하여야 합니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 22,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '⑧ [유효기간]',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ': 구입한 약물의 이름과 용도, 유효기간을 적어서 보관하며, 유효기간이 지났을 경우 버려야 합니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 22,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '⑨ [일반의약품]',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ': 감기약, 변비약 등을 처방 없이 일반의약품으로 구입하는 경우가 많으나, 어르신환자들은 의사의 처방에 의해 약물을 복용하는 것이 더욱 안전합니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 22,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '⑩ [복용 약물 파악]',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ': 여러 종류의 약물을 복용하고 있는 환자의 경우, 현재 복용하는 약물을 기록하여 병원이나 약국 방문 시 추가로 복용하는 약에 영향을 주지 않는지 상담하여야 합니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 22,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),

                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '흔히 일어날 수 있는 \n약물유해반응 및 대처법',
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
                        '※ 위장 장애가 나타날 경우\n(속쓰림, 소화불량, 변비)',
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '◆ 속쓰림 : 식사 직후에 복용\n\n◆ 소화불량 : 소화제를 함께 복용\n\n◆ 변비 : 변비약을 장기적으로 복용하면 대장의 기능이 저하되어 배변기능이 악화되므로 의사와 상의 필요',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 21,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '※ 이뇨제 복용 후 밤에 소변을 빈번히 보는 경우',
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        ': 저녁약 복용 시간을 저녁 6시 이전으로 합니다.',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 21,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '※ 소변 또는 대변 변색이 나타나는 경우',
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '◆ 일단 중단하고 상담합니다.\n\n◆ 약물로 인해 변색된 경우, 인체에는 전혀 무해하므로 안심하셔도 됩니다.',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 21,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        '(철분제 => 대변색이 검어질 수 있음 \n결핵약 => 소변, 땀, 눈물색이 붉어질 수 있음)'
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
