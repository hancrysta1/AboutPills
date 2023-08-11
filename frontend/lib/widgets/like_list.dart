import 'package:flutter/material.dart';
import 'package:frontend/widgets/like_list_items.dart';

import '../models/searchLikesModel.dart';

class LikeList extends StatelessWidget {
  final List<ResultsL> results;
  LikeList({required this.results});
  var name = '한눈송';

  @override
  Widget build(BuildContext context) {
    //print(results);
    return MaterialApp(
      builder: (context, snapshot) {
        return Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.black, //색변경
            ),
            title: Text(''),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),

          body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: HeaderTile(context),
                    height: 180,
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide()),
                    ),
                  ),
                  Expanded(child: _buildResult(context),
                    ),
                ],
              ),
          ),
        );
      }
    );
  }
  @override
  Widget _buildResult(BuildContext context) {
    return Container(
      child: ListView(
        children: getChildrenResults(),
        padding: const EdgeInsets.all(16.0),
      ),

    );}
  List<LikeListItem> getChildrenResults() {
    return results
        .map((result) => LikeListItem(
      result: result,
    )).toList();
  }
  @override
  Widget HeaderTile(BuildContext context) {
    final count = getChildrenResults().length;
    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Text(
              //   '$name',
              //   style: TextStyle(
              //       fontFamily: "Inter-ExtraBold",
              //       fontSize: 30,
              //       fontStyle: FontStyle.italic),
              // ),
              Text(
                '나의 알약 리스트',
                style: TextStyle(
                    fontFamily: "Inter-ExtraBold",
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(15),
              ),
              Text(
                '총 $count건',
                style: TextStyle(
                    fontFamily: "Inter-ExtraBold",
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(15),
              ),
            ]));
  }

}