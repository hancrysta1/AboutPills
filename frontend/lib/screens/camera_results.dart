import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';
import '../providers/results_provider.dart';
import '../widgets/results_list.dart';

class camera_results extends StatelessWidget {
  final String resultColor;final String resultShape;
  final String resultMark;final String imagePath;


  camera_results({required this.resultColor, required this.resultShape, required this.resultMark,required this.imagePath, });

  @override
  Widget build(BuildContext context) {
    print(ResultsProvider.apiEndpoint);
    return ChangeNotifierProvider(
              create: (BuildContext context) => ResultsProvider(),

        child: MaterialApp(
          builder: (context, snapshot) {
            return Scaffold(
              appBar: AppBar(
                iconTheme: IconThemeData(
                  color: Colors.black, //색변경
                ),
                leading: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PillsApp()));//뒤로가기
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Colors.black),
                title: Text(''),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              body:Consumer<ResultsProvider>(
              builder: (context, value, child) =>
                  ResultsList(results: value.allResults, resultColor: resultColor,resultShape: resultShape,resultMark: resultMark,imagePath: imagePath,)),
            );}));}
}
