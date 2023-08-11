import 'package:flutter/material.dart';

List<BottomNavigationBarItem> navbarItems = [
  BottomNavigationBarItem(
    label: '홈',
    icon: Image.asset('images/bottom/button1.png',
        width: 33, height: 33),
    activeIcon: Image.asset('images/bottom/button1_af.png',
        width: 33, height: 33),
  ),
  BottomNavigationBarItem(
    label: '',
    icon: Image.asset('images/bottom/button2.png',
        width: 33, height: 33),
    activeIcon: Image.asset('images/bottom/button2_af.png',
        width: 33, height: 33),
  ),
  BottomNavigationBarItem(
    label: 'DUR',
    icon: Image.asset('images/bottom/button3.png',
        width: 33, height: 33),
    activeIcon: Image.asset('images/bottom/button3_af.png',
        width: 33, height: 33),
  ),
  BottomNavigationBarItem(
    label: '',
    icon: Image.asset('images/bottom/button4.png',
        width: 59, height: 59),
    activeIcon: Image.asset('images/bottom/button4_af.png',
        width: 59, height: 59),
  ),
];