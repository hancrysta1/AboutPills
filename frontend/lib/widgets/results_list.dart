import 'package:flutter/material.dart';
import 'package:frontend/models/searchResultModel.dart';
import 'package:frontend/widgets/results_list_items.dart';
import 'package:provider/provider.dart';
import 'dart:io';

import '../providers/results_provider.dart';

//I/flutter (14825): /data/user/0/com.example.frontend/cache/2023-03-13 17:26:08.974287.png
// I/flutter (14825): {color: 갈색, shape: 장방형, text: }
//결과 리스트 뿐 아니라 카메라로부터 값을 받아와야함.
//camera(context)->camera_results(context)->result_list- result_list_item
class ResultsList extends StatefulWidget {
  late List<Results> results;
  final String resultColor;final String resultShape;
  final String resultMark;final String imagePath;
  ResultsList({required this.results, required this.resultColor, required this.resultShape, required this.resultMark, required this.imagePath});

  @override
  State<ResultsList> createState() => _ResultsListState(results,resultColor,resultShape,resultMark,imagePath);
}
class _ResultsListState extends State<ResultsList> {
  List<Results> results;
  late final String resultColor;late final String resultShape;
  late final String resultMark;late final String imagePath;

  _ResultsListState(this.results, this.resultColor, this.resultShape, this.resultMark, this.imagePath);

  late ResultsProvider _resultsProvider;
  @override
  Widget build(BuildContext context) {
    _resultsProvider = Provider.of<ResultsProvider>(context, listen: false);
    results = _resultsProvider.allResults;
    return
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child:
                      ListView(

                        children:[
                          HeaderTile(context,resultColor,resultShape,resultMark,imagePath),
                          Row(children: [Expanded(child: _buildResult(context,results,resultColor,resultShape,resultMark))]),


                        ],
                      ),

                ),
              ],

          );
        }
  }

  @override
  Widget _buildResult(BuildContext context,List<Results> results,String rc,String rs,String rm) {
    return
        Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: getChildrenResults(results,rc,rs,rm),
            padding: const EdgeInsets.all(16.0),

          ),


    );}
  List<ResultsListItem> getChildrenResults(List<Results> results,String rc,String rs,String rm) {
     List<ResultsListItem> filter = results
        .map((result) => ResultsListItem(
      result: result,
     ))
         .where((element) => element.result.color==rc)
        .where((element) => element.result.shape==rs)
         .where((element) => element.result.printing.contains(rm))
        .toList();

    return filter;
  }

  @override
  Widget HeaderTile(BuildContext context,String rc,String rs,String rm,String path) {
    return Container(
        child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
              ),
              Center(
                child: Text(
                  '<'+rc+'>의 <'+rs+'> 알약',
                  style: TextStyle(
                      fontFamily: "Inter-Medium",
                      fontSize: 18,
                      fontStyle: FontStyle.italic),
                ),
              ),
                Center(
                child: Text(
                '마크는 <'+rm+'>',
                style: TextStyle(
                fontFamily: "Inter-Medium",
                fontSize: 18,
                fontStyle: FontStyle.italic),
                ),),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Image.file(File(path),width: 300,
                height: 300,
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Center(
                child: Text(
                  '검색결과는 다음과 같습니다.',
                  style: TextStyle(
                      fontFamily: "Inter-Medium",
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30),
              ),
            ]));
  }

