
import 'package:flutter/material.dart';

class grid4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> items = ['1. 알코올(Alcohol)','2. 아스피린 (Aspirin)','3. 제산제 (Antacids)','4. 스타틴제제(Statins)','5. 항히스타민제 (Anti-histamines)'];
    final _biggerFont = const TextStyle(fontSize: 20.0,);
    AlertDialog alert1 = AlertDialog(
      title: Text('알코올(Alcohol)',style: TextStyle(fontSize: 30)),
      content: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('다음 약물과 복용하지 않도록 합니다.',
              style: TextStyle(
                  fontFamily: "Inter-ExtraBold",
                  fontSize: 19,
                  color: Colors.red,
                  fontWeight: FontWeight.bold),),
            Padding(
              padding: EdgeInsets.all(18),
            ),
            Text('[ 상호작용 있는 약물 ]',
              style: TextStyle(
                color: Colors.blue,
                fontFamily: "Inter-ExtraBold",
                fontSize: 19,),),
            Padding(
              padding: EdgeInsets.all(18),
            ),
            Text(
              '-포수클로랄 (최면진정제, Choral Hydrate)\n\n-구아네티딘 (Guanethidine)\n\n-메트로니다졸 (항원충제, Metronidazole)\n\n-페니토인(항전간제, Phenytoin)\n\n-오심구토 억제제 (Anti-nausea)\n\n-불안완화제 (Anxiolytics)\n\n-진정-수면제 (Sedative- Hypnotics)\n\n-항히스타민제 (Antihistamine)\n\n-모노아민산화효소억제제 (Monoamine Oxidase Inhibitors)\n\n',
              style: TextStyle(
                  fontFamily: "Inter-ExtraBold",
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),),

          ],),
      ),
      scrollable: true,
      actions: [
      ],
    );
    AlertDialog alert2 = AlertDialog(
      title: Text('아스피린 (Aspirin)',style: TextStyle(fontSize: 30)),
      content: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('아스피린 (Aspirin)은 일반의약품으로 판매되고 있으나, 때에 따라 심혈관계 질환을 예방하기 위해 사용될 수 있는 약물입니다. ',
              style: TextStyle(
                  fontFamily: "Inter-ExtraBold",
                  fontSize: 19,
                  color: Colors.black,),),
            Text('다음 약물과 복용하지 않도록 합니다.',
              style: TextStyle(
                  fontFamily: "Inter-ExtraBold",
                  fontSize: 19,
                  color: Colors.red,
                  fontWeight: FontWeight.bold),),
            Padding(
              padding: EdgeInsets.all(18),
            ),
            Text('[ 상호작용 있는 약물 ]',
              style: TextStyle(
                color: Colors.blue,
                fontFamily: "Inter-ExtraBold",
                fontSize: 19,),),
            Padding(
              padding: EdgeInsets.all(18),
            ),
            Text(
              '-항응고제 (Anticoagulants)\n > 출혈의 위험이 증가 할 수 있으므로 함께 복용하지 않도록 합니다.\n\n-진통제 (Analgesics)\n > 진통제의 부작용이 증가 할 수 있으므로 함께 복용하지 않도록 합니다.\n예) 아세트아미노펜 (Acetaminophen), 이부프로펜 (Ibuprofen)\n\n-항악성종양제 (Cytotoxics)\n > 메토트렉세이트의 배설이 감소해서 독성이 증가할 수 있으므로 함께 복용하지 않도록 합니다.\n예) 메토트렉세이트 (Methotrexate)\n\n-제산제 (Antacids)\n > 아스피린의 배설이 증가됨으로 효과를 감소시킬 수 있으므로 함께 복용하지 않도록 합니다.\n\n-아세타졸아미드(Acetazolamide)\n > 탄산 효소 저해제, 이뇨제, 항경련제\n\n-알코올 (Alcohol)\n\n설포닐우레아 (Sulfonylureas)\n',
              style: TextStyle(
                  fontFamily: "Inter-ExtraBold",
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),),

          ],),
      ),
      scrollable: true,
      actions: [
      ],
    );
    AlertDialog alert3 = AlertDialog(
      title: Text('제산제 (Antacids)',style: TextStyle(fontSize: 30)),
      content: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('제산제는 위산과다로 속 쓰림 증상이 있는 환자에게 사용되는 약입니다.',
              style: TextStyle(
                fontFamily: "Inter-ExtraBold",
                fontSize: 19,
                color: Colors.black,),),
            Text('다음 약물과 복용하지 않도록 합니다.',
              style: TextStyle(
                  fontFamily: "Inter-ExtraBold",
                  fontSize: 19,
                  color: Colors.red,
                  fontWeight: FontWeight.bold),),
            Padding(
              padding: EdgeInsets.all(18),
            ),
            Text('[ 상호작용 있는 약물 ]',
              style: TextStyle(
                color: Colors.blue,
                fontFamily: "Inter-ExtraBold",
                fontSize: 19,),),
            Padding(
              padding: EdgeInsets.all(18),
            ),
            Text(
              '-항생제\n > 항생제의 흡수를 저해하여 효과를 감소시킬 수 있으므로 함께 복용하지 않도록 합니다. \n예) 테트라사이클린 (tetracycline), 시프로플록사신 (ciprofloxacin)\n\n-강심제\n > 강심제의 흡수를 저해하여 효과를 감소시킬 수 있으므로 함께 복용하지 않도록 합니다. \n예) 디기탈리스 (Digitalis)\n\n-아스피린 (Aspirin) : 해열.진통.소염제\n\n-비사코딜 (Bisacodyl) : 완하제\n\n-이소니아짓 (Isoniazid) : 항결핵제\n\n-퀴니딘(Quinidine) : 부정맥용제',
              style: TextStyle(
                  fontFamily: "Inter-ExtraBold",
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),),

          ],),
      ),
      scrollable: true,
      actions: [
      ],
    );

    AlertDialog alert4 = AlertDialog(
      title: Text('스타틴제제(Statins)',style: TextStyle(fontSize: 30)),
      content: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('스타틴제제는 혈중 콜레스테롤이 높은 고지혈증 치료에 사용되는 약물입니다.',
              style: TextStyle(
                fontFamily: "Inter-ExtraBold",
                fontSize: 19,
                color: Colors.black,),),
            Text('다음 약물과 복용하지 않도록 합니다.',
              style: TextStyle(
                  fontFamily: "Inter-ExtraBold",
                  fontSize: 19,
                  color: Colors.red,
                  fontWeight: FontWeight.bold),),
            Padding(
              padding: EdgeInsets.all(18),
            ),
            Text('[ 상호작용 있는 약물 ]',
              style: TextStyle(
                color: Colors.blue,
                fontFamily: "Inter-ExtraBold",
                fontSize: 19,),),
            Padding(
              padding: EdgeInsets.all(18),
            ),
            Text(
              '-항부정맥제 (Anti-arrhythmics)\n > 근육관련질환을 유발할 가능성이 증가할 수 있으므로 함께 복용하지 않도록 합니다. \n예) 아미오다론 (Amiodarone)\n\n-항바이러스제 (Antivirals)\n > 근질환을 유발할 가능성이 증가할 수 있으므로 함께 복용하지 않도록 합니다. \n예) 리토나비어 (Ritonavir)\n\n',
              style: TextStyle(
                  fontFamily: "Inter-ExtraBold",
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),),

          ],),
      ),
      scrollable: true,
      actions: [
      ],
    );
    AlertDialog alert5 = AlertDialog(
      title: Text('항히스타민제 (Anti-histamines)',style: TextStyle(fontSize: 30)),
      content: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('항히스타민제는 재체기, 가려움증 및 콧물의 증상을 개선하기 위하여 사용하는 약물로, 졸음을 유발하고 주간 활동을 방해할 수 있습니다.',
              style: TextStyle(
                fontFamily: "Inter-ExtraBold",
                fontSize: 19,
                color: Colors.black,),),
            Text('다음 약물과 복용하지 않도록 합니다.',
              style: TextStyle(
                  fontFamily: "Inter-ExtraBold",
                  fontSize: 19,
                  color: Colors.red,
                  fontWeight: FontWeight.bold),),
            Padding(
              padding: EdgeInsets.all(18),
            ),
            Text('[ 상호작용 있는 약물 ]',
              style: TextStyle(
                color: Colors.blue,
                fontFamily: "Inter-ExtraBold",
                fontSize: 19,),),
            Padding(
              padding: EdgeInsets.all(18),
            ),
            Text(
              '-항부정맥제 (Anti-arrhythmics)\n > 근육관련질환을 유발할 가능성이 증가할 수 있으므로 함께 복용하지 않도록 합니다. \n예) 아미오다론 (Amiodarone)\n\n-항진균제 (Antifungals)\n > 항히스타민제의 체내 농도를 증가시킬 위험이 있으므로 함께 복용하지 않도록 합니다. \n예) 케토코나졸 (Ketoconazole)\n\n',
              style: TextStyle(
                  fontFamily: "Inter-ExtraBold",
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),),

          ],),
      ),
      scrollable: true,
      actions: [
      ],
    );
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
            title: Text('※ 혼용 금지 약물',style: TextStyle(fontSize: 30)),

            elevation: 0,

            ),
          body:ListView.separated(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  leading: Image.asset('images/bbi.png', width: 50, height: 50),
                title: Text(items[index],style: _biggerFont),
                onTap: (){
                  switch (index+1) {
                    case 1:
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert1;
                        },
                      );
                      break;
                    case 2:
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert2;
                        },
                      );
                      break;
                    case 3:
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert3;
                        },
                      );
                      break;
                    case 4:
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert4;
                        },
                      );
                      break;
                    case 5:
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert5;
                        },
                      );
                      break;
                    default:
                      print('This is not a recognized fruit');
                  }
                }
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(thickness: 3,);
            },
          )
      );});}
}

