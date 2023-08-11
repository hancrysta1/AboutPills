import 'dart:collection';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:frontend/models/searchResultModel.dart';
import 'package:http/http.dart' as http;

import '../models/searchLikesModel.dart';

class LikesProvider extends ChangeNotifier {
  LikesProvider() {
    fetchResults();
  }
  List<ResultsL> _Results = [];
  // //수정 금지
  UnmodifiableListView<ResultsL> get allResults =>
      UnmodifiableListView(_Results);
  static const String apiEndpoint = 'http://43.201.77.82:8000/likes/noonsong/';

  final Uri url = Uri.parse(apiEndpoint);

  fetchResults() async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var data = jsonDecode(utf8.decode(response.bodyBytes)) as List;
      _Results = data.map<ResultsL>((json) => ResultsL.fromJson(json)).toList();
      print("연결이 된거야?>zzim");
      print(_Results[0].name);
      notifyListeners();
    }
  }
}
