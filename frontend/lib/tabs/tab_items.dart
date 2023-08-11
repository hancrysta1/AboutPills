import 'package:flutter/material.dart';
import 'package:frontend/tabs/Page1.dart';
import 'package:frontend/tabs/Page2.dart';
import 'package:frontend/tabs/Page3.dart';
import 'package:frontend/tabs/Page4.dart';

enum TabItem { Page1, Page2, Page3,Page4 }

const Map<TabItem, int> tabIdx = {
  TabItem.Page1: 0,
  TabItem.Page2: 1,
  TabItem.Page3: 2,
  TabItem.Page4: 3,
};

Map<TabItem, Widget> tabScreen = {
  TabItem.Page1: Page1(),
  TabItem.Page2: LikeResults(),
  TabItem.Page3: GridViewPage(),
  TabItem.Page4: LoginPage(),
};