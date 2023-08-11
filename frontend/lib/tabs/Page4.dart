import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart' show client;
import 'package:frontend/screens/join.dart';
import 'package:flutter/material.dart';
import 'package:frontend/screens/after_login.dart';
import 'package:frontend/screens/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = new GlobalKey<FormState>();

  String _uid = '';
  String _pwd = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(30),
              ),
              Text(
                '로그인',
                style: TextStyle(
                    fontFamily: "Inter-ExtraBold",
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(15),
              ),
              TextFormField(
                  decoration: InputDecoration(labelText: 'ID'),
                  style: TextStyle(fontSize: 25),
                  onChanged: (text){
                    setState(() {
                      _uid = text;
                    });},
                  ),
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'PW',hintText: '패스워드를 입력하세요.',),
                  style: TextStyle(fontSize: 25),
                  // validator: (value) =>
                  // value!.isEmpty ? 'Password can\'t be empty' : null,
                  onChanged: (text){
                    setState(() {
                      _pwd = text;
                    });}),
              IconButton(
                  icon: Image.asset(
                    "images/login_button.png",
                    width: 511,
                    height: 513,
                  ),
                  iconSize: 150.0,
                  onPressed: () async {
                    final form = _formKey.currentState;
                    if(form != null && !form.validate()){
                      form?.save();
                    }
                    final url = Uri.parse('http://43.201.77.82:8000/member/login/');
                    try {
                      Map data = {'uid': _uid,'pwd':_pwd};
                      var body = json.encode(data);
                      http.Response response = await http.post(
                          url,
                          headers: {"Content-Type": "application/json",
                            "Accept": "application/json"},
                          body: body);
                      final int statusCode = response.statusCode;
                      print(statusCode);
                      print(data['uid']);
                      final url2 = Uri.parse('http://43.201.77.82:8000/member/${data['uid']}/');
                      var response2 = await http.get(url2 as Uri,
                          headers: {'content-type': 'application/json'}
                      );

                      var re = json.decode(utf8.decode(response2.bodyBytes));
                      print(re['name']);
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => afterLogin(name:re['name']),
                      ));
                    } catch (e) {
                      print(e);

                      return null;
                    }

                  }),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => JoinPage(),
                  ));
                  print(_formKey.currentState);
                },
                child: const Text('회원가입'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
