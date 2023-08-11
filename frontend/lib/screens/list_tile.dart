import 'package:flutter/material.dart';

// (c) DemoListTile - ListView Tile 위젯 반환.
class DemoListTile extends StatelessWidget {
  DemoListTile(this._data);

  final ListData _data;

  @override
  Widget build(BuildContext context) {
    // (w) ListTile 기본형.
    return ListTile(
      title: Text(_data.name),
      subtitle: Text(_data.content),
      trailing: InterestIcon(_data.isInterest), isThreeLine: true,
      leading: Image.asset(_data.img),
      //FlutterLogo(size: 72.0),
    );
  }
}



// (c) ListData - ListView Data Class
class ListData {
  final String name;
  final String content;
  final bool isInterest;
  final String img;
  ListData(this.name, this.content, this.isInterest,this.img);
}

// (c) InterestIcon - 관심 on/off 아이콘 반환.
class InterestIcon extends StatelessWidget {
  InterestIcon(this._isInterest);

  final bool _isInterest;

  @override
  Widget build(BuildContext context) {
    if (_isInterest) {
      return const Icon(Icons.favorite,color: Colors.red,);
    } else {
      return const Icon(Icons.favorite_border);
    }
  }
}