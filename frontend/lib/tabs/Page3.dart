

import 'package:flutter/material.dart';
import 'package:frontend/screens/how/grid1.dart';
import 'package:frontend/screens/how/grid4.dart';
import 'package:frontend/screens/how/grid2.dart';
import 'package:frontend/screens/how/grid3.dart';
import 'package:frontend/screens/how/grid5.dart';
import 'package:frontend/screens/how/grid6.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key}) : super(key: key);
  @override
  _GridViewPage createState() => _GridViewPage();
}

class _GridViewPage extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
            childAspectRatio: 1 / 1, //item 의 가로 1, 세로 2 의 비율
          ),
          itemBuilder: (BuildContext context, int index) {
            // return Text(index.toString());
            return IconButton(
                onPressed: () {

                  switch (index+1) {
                    case 1:
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => grid1()));
                      break;
                    case 2:
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => grid2()));
                      break;
                    case 3:
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => grid3()));
                      break;
                    case 4:
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => grid4()));
                      break;
                    case 5:
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => grid5()));
                      break;
                    case 6:
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => grid6()));
                      break;
                    default:
                      print('This is not a recognized fruit');
                  }


                },
                icon: Image.asset(
                  'images/Group1${index + 1}.png',
                  fit: BoxFit.fill,
                ));
          },
        ),
      ),
    );
  }
}
