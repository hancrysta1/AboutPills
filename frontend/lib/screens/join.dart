
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:frontend/screens/after_join.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show client;
import 'package:flutter/material.dart';
import 'package:frontend/tabs/Page4.dart';

class JoinPage extends StatefulWidget {
  @override
  _JoinPageState createState() => _JoinPageState();
}

class _JoinPageState extends State<JoinPage> {

  String _uid = '';
  String _name = '';
  String _password = '';

  final edit_name = TextEditingController();
  final edit_repassword = TextEditingController();
  String label = '';
  final _formKey = GlobalKey<FormState>();

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
                '회원가입',
                style: TextStyle(
                    fontFamily: "Inter-ExtraBold",
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(15),
              ),
              Text('ID'),
              TextFormField(
                  decoration: InputDecoration(hintText: '아이디 입력',),
                  style: TextStyle(fontSize: 18),
                  onChanged: (text){
                  setState(() {
                  _uid = text;
                  });},
                  validator: (value) =>
                  value!.isEmpty ? '아이디는 필수 입력 값입니다.' : null,
                ),

              Padding(
                padding: EdgeInsets.all(15),
              ),
              Text('이름'),
              TextFormField(
                controller: edit_name,
                onChanged: (text){
                  setState(() {
                    _name = text;
                  });},
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[ㄱ-ㅎ|ㅏ-ㅣ|가-힣|ᆞ|ᆢ|ㆍ|ᆢ|ᄀᆞ|ᄂᆞ|ᄃᆞ|ᄅᆞ|ᄆᆞ|ᄇᆞ|ᄉᆞ|ᄋᆞ|ᄌᆞ|ᄎᆞ|ᄏᆞ|ᄐᆞ|ᄑᆞ|ᄒᆞ]')),
                ],
                  decoration: InputDecoration(hintText: '유저 네임 입력(10자 이내)',),
                  style: TextStyle(fontSize: 18),
                validator: (value) {
                value!.isEmpty ? '이름은 공백란을 사용할 수 없습니다.' : null;},
                ),
              Padding(
                padding: EdgeInsets.all(15),
              ),
              Text('Password'),
              TextFormField(
                onChanged: (text){
                setState(() {
                _password = text;
                });},
                  decoration: InputDecoration(hintText: "패스워드 입력(8~16자 이내)",),
                  obscureText: true,
                  style: TextStyle(fontSize: 18),validator: (value) =>
              value!.isEmpty ? '비밀번호는 공백란을 사용할 수 없습니다.' : null,
                ),
              Padding(
                padding: EdgeInsets.all(15),
              ),
              Text('Password 확인'),
              TextFormField(
                controller: edit_repassword,
                onChanged: (text){if(text==_password)
                  setState(() {label="패스워드 일치";print("맞아요!");_name = text;
                  }); else if(text!=_password) {
                  setState(() {label = "입력한 패스워드와 다릅니다.";
                  print("틀려요!");});}
                  },

                  decoration: InputDecoration(hintText: '패스워드 확인(8~16자 이내)',
                      labelText: label),
                  obscureText: true,
                  style: TextStyle(fontSize: 18),
                  validator: (value) {
                  value!.isEmpty ? '패스워드 확인을 입력해주세요.' : null;
                },
                ),
              IconButton(
                  icon: Image.asset(
                    "images/join_button.png",
                    width: 511,
                    height: 513,
                  ),
                  iconSize: 150.0,
                  onPressed: () async {
                    final form = _formKey.currentState;
                    if(form != null && !form.validate()){
                      form?.save();
                    }
                    final url = Uri.parse('http://43.201.77.82:8000/member/join/');
                    try {
                        Map data = {'uid': _uid,'name':edit_name.text,'pwd':_password};
                        var body = json.encode(data);
                        http.Response response = await http.post(
                            url,
                            headers: {"Content-Type": "application/json",
                              "Accept": "application/json"},
                            body: body);
                        final int statusCode = response.statusCode;
                        print(statusCode);
                        print(body);
                        json.decode(utf8.decode(response.bodyBytes));
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => afterJoin(),
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
                    builder: (context) => LoginPage(),
                  ));
                },
                child: const Text('기존 아이디로 로그인하기'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
