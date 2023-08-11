import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:frontend/screens/home.dart';

class grid6 extends StatelessWidget {
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
                  '임신부의 안전하고, 효과적인 약 복용을 위한 10계명',
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
                        'images/prag.png',width: 150,height: 150,),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '약물에 의한 기형발생은 약물용량, 노출시간, 투여방법, 특히 임신주수 등에 영향을 받습니다.',
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 21,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '① 임신 가능한 여성의 경우 약물 복용 전 임신 여부 확인하십시오.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ': 임신 가능한 여성이 약물을 복용할 때는 임신 계획 및 임신 여부를 반드시 확인하여야 하며 전문가와 상의 후 투여하는 것이 필요합니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 22,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '② 임신 중 약물 복용은 태아에게 영향을 줄 수 있습니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ': 임신부가 약물 복용 시 주의해야 하는 까닭은 약물이 태반을 통과하여 태아에게 나쁜 영향을 미칠 수 있고 임신부에게도 독성을 일으킬 수 있기 때문입니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 22,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '③ 임신 중 약물 복용 방법은 일반 성인과는 다를 수 있습니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ': 임신 중에는 복용한 약물이 태반을 통과할 수 있다는 것을 항상 염두 해두셔야 하며 임신 중 약물의 체내 움직임은 일반 성인과는 다른 형태로 바뀌어 나타나므로 약물의 복용량과 복용법 변화에 유의하셔야 합니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 22,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '④ 임신 3주에서 8주 사이 약물 복용 시 더욱 주의하셔야 합니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ': 임신 주수에 따라 약물이 태아에게 미치는 영향이 다양합니다. 특히, 임신 3주에서 8주 사이 (임신 제 1 삼분기)에는 태아의 장기가 형성되는 결정적인 시기이므로 특별히 조심해야 합니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 22,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '⑤ 약물마다 임신 시 미치는 영향에 따른 카테고리가 구분되어 있습니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ': 미국 FDA 에서는 약물마다 태아에 미치는 영향을 가장 안전한 카테고리 A부터 가장 위험한 카테고리 X까지 다섯 단계로 구분하여 표시하고 있으므로 그 위험성을 예측할 수 있습니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 22,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '⑥ 임신 중 약물 투여는 반드시 전문가 (의약사)와 상의 후 투여하십시오.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ': 임신 중에 약물을 투여할 경우, 약물치료가 꼭 필요한지 전문가와 다시 검토하고 대증요법 등의 다른 치료방법을 우선적으로 모색해야 합니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 22,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '⑦ 임신 중 질환에 따라 약물을 꼭 복용해야 하는 경우도 있습니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ': 임신 중 간질, 고혈압, 당뇨 등의 질환을 동반하는 경우 질병 자체가 태아에게 위험할 수 있으므로 전문가와 상의 후 정해진 용량 용법에 맞추어 약물을 복용하는 것이 좋습니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 22,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '⑧ 임신 중 약물 사용은 사용 경험이 풍부한 약물을 사용하는 것이 좋습니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ': 임신 중 약물 사용 시에는 자료가 불충분한 최근 개발된 약물보다는 과거부터 임신 시에 흔히 사용된 약물을 사용하는 것이 안전합니다',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 22,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '⑨ 임신 중 약물 사용은 투여 목적에 따라 최소한으로 투여합니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ': 임신 시 약물을 복용해야만 할 경우 약물 투여의 목적에 따른 최소한의 유효용량을 최단기간동안 투여합니다. 또한 부작용 모니터링을 통한 가장 안전하다고 판단되는 약물을 충분한 설명과 함께 투여해야 하며 동시에 발생될 수 있는 미세한 변화도 간과해서는 안 됩니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 22,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),
                      const Text(
                        '⑩ 임신 중 약물 복용 시에는 태아와 산모의 건강을 모두 고려해야 합니다.',
                        style: TextStyle(
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ': 임신부에 약물을 사용할 때에는 약물이 태아에게 기형을 일으킬 수 있다는 점과 함께 약물이 임신부에 미치는 독성을 함께 고려해야 합니다.',
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
                        '모유로의 약물이동에 영향을 미치는 것들',
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
                        '-약물 치료인자(용량, 투여경로, 제형, 투여간격, 투여기간 등)\n-엄마 몸의 대사기능\n-엄마 몸의 배설기능\n-약물의 약동학적 특징\n-약물의 지방에서 녹는 정도\n-약물의 단백과 결합하는 정도\n-약물의 분자량\n-모유의 pH\n-유방으로 흐르는 혈관 내의 혈액량\n-신생아의 젖꼭지 빠는 정도\n-수유 기간\n-수유 간격\n-엄마 몸의 약물 투여시간과 수유 시간과의 간격\n',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Inter-ExtraBold",
                            fontSize: 18,
                            fontStyle: FontStyle.italic,fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18),
                      ),


                      ],
                      ),
                )),
            ],
          ));});}
}
