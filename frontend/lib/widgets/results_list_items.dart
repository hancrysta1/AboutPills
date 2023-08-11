import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend/models/searchResultModel.dart';
import '../models/searchResultModel.dart';
import 'package:http/http.dart' as http;
class ResultsListItem extends StatefulWidget {
  ResultsListItem({Key? key, required this.result}) : super(key: key);
  final Results result;
  // ResultsListItem(this.result);
  @override
  State<ResultsListItem> createState() => _ResultsListItemState(result);
}
class _ResultsListItemState extends State<ResultsListItem> {
  final Results result;
  final _biggerFont = const TextStyle(fontSize: 18.0);

  _ResultsListItemState(this.result);


  @override
  Widget build(BuildContext context) {
    final alreadySaved = result.zzim;
    var id = result.id;
    var image_pill = result.image;
    var printing='';
    if(result.printing!=null)
      printing = result.printing+' 프린팅';
    else printing = '프린팅 없음';
    return Material(
        child: ListTile(//images/bottom/button1.png
          leading: Image.network(image_pill, width: 70, height: 70),
          title: Text(
            //pair.asPascalCase,// 이름 String
            result.name,
            style: _biggerFont,
          ),
          subtitle: Text(result.detail),
          trailing: IconButton(
            icon: Icon(
              alreadySaved ? Icons.favorite : Icons.favorite_border,
              color: alreadySaved ? Colors.red : null,
              semanticLabel: alreadySaved ? 'Remove from saved' : 'Save',
            ),
            onPressed: () async{
              bool putLike = _pushSaved(alreadySaved);
              print("찜 " + putLike.toString());
              var url = Uri.parse('http://43.201.77.82:8000/zzim/');
              var response = await http.post(url as Uri,
                  body: json.encode({'uid': 'noonsong','pills_id':result.id,}),
                  headers: {'content-type': 'application/json'}
              );


              if (response.statusCode == 200) {
              print("찜 성공~"+result.id.toString());}
              else {
                print(response.statusCode);
              }
              var uid = 'noonsong';
              var url2 = Uri.parse('http://43.201.77.82:8000/zzim/heart/$uid');
              var response2 = await http.patch(url2 as Uri,
                  headers: {'content-type': 'application/json'}
              );

              if (response2.statusCode == 200) {
                print("찜 하트 콩~~"+result.id.toString());}
              else {
                print(response2.statusCode);
              }
            },
          ),
          onTap: () {
            print("Pressed " + result.name + "\nid : " + result.id.toString());
            AlertDialog alert = AlertDialog(
              icon: Image.network(image_pill, width: 150, height: 70),
              title: Text(result.name),
              content: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('[ 특징 ] '+result.detail,
                      style: TextStyle(
                        fontFamily: "Inter-ExtraBold",
                        fontSize: 16,),),
                    Text('[ 추가 특징 ] '+printing,
                      style: TextStyle(
                        fontFamily: "Inter-ExtraBold",
                        fontSize: 16,),),
                    Text('[ 분류 ] '+result.aim,
                      style: TextStyle(
                          fontFamily: "Inter-ExtraBold",
                          fontSize: 19,
                          fontWeight: FontWeight.bold),),
                    Text('[ 제조사 ] '+result.company,
                      style: TextStyle(
                        fontFamily: "Inter-ExtraBold",
                        fontSize: 16,),),
                    Text('[ 분류코드 ] '+result.classy,
                      style: TextStyle(
                        fontFamily: "Inter-ExtraBold",
                        fontSize: 16,),),

                  ],),
              ),
              scrollable: true,
              actions: [

              ],
            );
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return alert;
              },
            );
            },
        )
    );
  }

  _pushSaved(bool alreadySaved) {
    setState(() {
      if (alreadySaved) {
        result.zzim = false;
      } else {
        result.zzim = true;
      }
    });
    return result.zzim;
  }

}


