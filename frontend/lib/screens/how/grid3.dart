
import 'package:flutter/material.dart';

class grid3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> items = ['1. 비만치료제','2. 단백동화호르몬제제','3. 발기부전치료제','4. 조루증 치료제'];
    final _biggerFont = const TextStyle(fontSize: 20.0,);
    AlertDialog alert1 = AlertDialog(
      title: Text('비만치료제란?'),
      content: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '흔히 말하는 "살빼는 약"의 정식명칭은 "비만치료제" 또는 "체중조절의약품" 이며 구체적으로 식욕억제제와 지방분해효소억제제 두 종류가 있습니다.\n식욕억제제는 배가 고프지 않거나 또는 배가 부르다고 느껴 음식을 덜 먹게 하는 의약품을 말합니다.',
              style: TextStyle(
                fontFamily: "Inter-ExtraBold",
                fontSize: 16,),),
            Padding(
              padding: EdgeInsets.all(18),
            ),
            Text('[ 향정신성 식욕억제제 ] ',
              style: TextStyle(
                fontFamily: "Inter-ExtraBold",
                fontSize: 16,),),
            Text('펜터민, 펜디메트라진, 디에칠프로피온, 마진돌 성분',
              style: TextStyle(
                  fontFamily: "Inter-ExtraBold",
                  fontSize: 19,
                  color: Colors.red,
                  fontWeight: FontWeight.bold),),
            Padding(
              padding: EdgeInsets.all(18),
            ),
            Text('[ 이상반응 ] ',
              style: TextStyle(
                fontFamily: "Inter-ExtraBold",
                fontSize: 16,),),
            Text(
              '-어지러움, 혼동\n-위장장해, 구토, 변비\n-시야 흐림\n-두통, 초조감\n-과도한 이뇨 효과로 인한 갈증, 입마름, 가슴 두근거림\n-전해질 불균형으로 인한 근경련 및 근쇠의약품',
              style: TextStyle(
                  fontFamily: "Inter-ExtraBold",
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),

          ],),
      ),
      scrollable: true,
      actions: [
      ],
    );
    AlertDialog alert2 = AlertDialog(
      title: Text('단백동화호르몬제제란?'),
      content: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '남성호르몬(안드로겐) 결핍에 따른 피로, 근육량 감소, 복부 비만, 성기능 감소 등의 증상을 개선시키기 위해 남성호르몬 유도체를 보충해주는 의약품입니다. 선천성 남성호르몬결핍 및 신장애 시 투석으로 인한 결핍 시 이에 대한 보충치료제로 처방됩니다. \n 경구 혹은 주사제 형태로 사용되며, 안드로겐 생산에는 영향을 주지 않고 안드로겐의 적절농도를 유지시키는 의약품입니다.',
              style: TextStyle(
                fontFamily: "Inter-ExtraBold",
                fontSize: 16,),),
            Padding(
              padding: EdgeInsets.all(18),
            ),
            Text('[ 특별히 주의해야 할 사항 ] ',
              style: TextStyle(
                fontFamily: "Inter-ExtraBold",
                fontSize: 16,),),
            Text('-소아에게 사용되면 성장판이 일찍 닫히고 사춘기의 시작을 알리는 일련의 2차성징들이 평균시기보다 빨리 나타납니다. ',
              style: TextStyle(
                  fontFamily: "Inter-ExtraBold",
                  fontSize: 16,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),),
            Text('-이 약 복용 시에 단백동화 호르몬에 의해 혈액응고시간이 오래 걸릴 수 있으므로 외상에 주의하십시오. ',
              style: TextStyle(
                  fontFamily: "Inter-ExtraBold",
                  fontSize: 16,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),),
            Padding(
              padding: EdgeInsets.all(18),
            ),
            Text('[ 이상반응 ] ',
              style: TextStyle(
                fontFamily: "Inter-ExtraBold",
                fontSize: 16,),),
            Text(
              '-구역, 구토 증상\n-여성의 경우 남성 목소리(쉰 목소리)로의 변성, 여드름, 월경이상, 유즙분비의 감소\n-남성의 경우 전립선 악성종양증식의 가속화, 정자감소, 정액감소 등의 고환기능 이상 등의 증상\n',
              style: TextStyle(
                  fontFamily: "Inter-ExtraBold",
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),

          ],),
      ),
      scrollable: true,
      actions: [
      ],
    );
    AlertDialog alert3 = AlertDialog(
      title: Text('발기부전치료제란?'),
      content: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '발기부전의 치료에 사용되는 의약품입니다. \n 성기의 혈관을 확장시키고 평활근을 이완시키는 작용을 하며, 경구복용 또는 환부에 직접 사용하는 경우도 있습니다. ',
              style: TextStyle(
                fontFamily: "Inter-ExtraBold",
                fontSize: 16,),),
            Padding(
              padding: EdgeInsets.all(18),
            ),
            Text('[ 주의해야 할 의약품 ] ',
              style: TextStyle(
                fontFamily: "Inter-ExtraBold",
                fontSize: 16,),),
            Text('-유기 질산염 : 저혈압 및 실신의 위험 \n-임의로 여러 발기부전 치료제 병용 금지\n-위·십이지장궤양에 쓰이는 시메티딘(Cimetidine)이나 항균제인 에리스로마이신(Erythromycin)처럼 상호작용을 빈번하게 일으키는 의약품\n-에이즈 치료제, 무좀치료제, 항응고제 그밖에 결핵약인 리팜핀(Rifampin), 혈압약인 암로디핀(Amlodipine), 독사조신(Doxazosin) 등',
              style: TextStyle(
                  fontFamily: "Inter-ExtraBold",
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),),
            Padding(
              padding: EdgeInsets.all(18),
            ),
            Text('[ 이상반응 ] ',
              style: TextStyle(
                fontFamily: "Inter-ExtraBold",
                fontSize: 16,),),
            Text(
              '-두통, 소화불량\n-홍조, 코막힘(콧물), 근육통, 시각장애\n-4시간 이상의 발기지속\n-주사부위에 홍반,멍',
              style: TextStyle(
                  fontFamily: "Inter-ExtraBold",
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),

          ],),
      ),
      scrollable: true,
      actions: [
      ],
    );
    AlertDialog alert4 = AlertDialog(
      title: Text('조루증 치료제란?'),
      content: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '사정조절 장애로 성관계 시 만족감을 느끼기 전에 (보통 2분) 사정이 조기에 일어나는 조루증을 치료하는 데 사용하는 의약품입니다. \n중추신경계의 신경전달 물질인 세로토닌(Serotonin)의 감소가 조루증을 유발하는 신경생리학적 원인으로 알려져 있습니다. 이 의약품은 선택적으로 세로토닌(Serotonin) 감소를 억제하여 조루 증을 치료합니다. ',
              style: TextStyle(
                fontFamily: "Inter-ExtraBold",
                fontSize: 16,),),
            Padding(
              padding: EdgeInsets.all(18),
            ),

            Text('[ 병용 금지 ] ',
              style: TextStyle(
                fontFamily: "Inter-ExtraBold",
                fontSize: 16,),),
            Text('-마약류 및 항정신성 의약품\n-항우울제, 무좀치료제(손발톱), 간염치료제',
              style: TextStyle(
                  fontFamily: "Inter-ExtraBold",
                  fontSize: 19,
                  color: Colors.red,
                  fontWeight: FontWeight.bold),),
            Padding(
              padding: EdgeInsets.all(18),
            ),
            Text('[ 특별히 주의해야 할 사항 ] ',
              style: TextStyle(
                fontFamily: "Inter-ExtraBold",
                fontSize: 16,),),
            Text('-사용하는 동안에는 음주를 되도록 삼가하여야 합니다.\n-절대 여성은 사용하면 안됩니다.\n-65세 이상의 노인 및 18세 미만의 환자에게는 사용하면 안됩니다.',
              style: TextStyle(
                  fontFamily: "Inter-ExtraBold",
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),),
            Padding(
              padding: EdgeInsets.all(18),
            ),
            Text('[ 이상반응 ] ',
              style: TextStyle(
                fontFamily: "Inter-ExtraBold",
                fontSize: 16,),),
            Text(
              '-두통, 어지러움, 구역, 설사, 불면증 및 피로\n-처음 사용하거나, 지속적 사용 중 기립성 저혈압 혹은 실신, 어지럼증',
              style: TextStyle(
                  fontFamily: "Inter-ExtraBold",
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),

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
            title: Text('※ 오남용 우려 약물',style: TextStyle(fontSize: 30)),

            elevation: 0,

            ),
          body:ListView.separated(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  leading: Image.asset('images/worry.png', width: 50, height: 50),
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

