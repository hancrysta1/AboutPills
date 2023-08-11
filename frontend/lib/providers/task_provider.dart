import 'dart:collection';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:frontend/models/third.dart';
import 'package:http/http.dart' as http;

class ThirdProvider extends ChangeNotifier {
  List<Solution> _solutions = [];
  //수정 금지
  UnmodifiableListView<Solution> get allSolutions =>
      UnmodifiableListView(_solutions);
  static const String apiEndpoint = 'http://43.201.77.82:8000/solution';

  final Uri url = Uri.parse(apiEndpoint);

  fetchSolutions() async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var data = jsonDecode(utf8.decode(response.bodyBytes)) as List;
      _solutions =
          data.map<Solution>((json) => Solution.fromJson(json)).toList();
    }
  }
}
