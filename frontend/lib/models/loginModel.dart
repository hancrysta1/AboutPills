import 'package:flutter/cupertino.dart';

class Login extends ChangeNotifier {
  String uid;
  String pwd;

  Login({
        required this.uid,
      required this.pwd,
  });
  void setUid (String uid) {
    this.uid = uid;
    notifyListeners();
  }
  void setPassword (String pwd) {
    this.pwd = pwd;
    notifyListeners();
  }

  factory Login.fromJson(Map<String, dynamic> json) {
    return Login(
      uid: json['uid'],
      pwd: json['pwd'],
    );
  }
}