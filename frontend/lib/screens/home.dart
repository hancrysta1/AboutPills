import 'dart:ffi';
import 'package:frontend/tabs/Page1.dart';
import 'package:frontend/tabs/tab_items.dart';
import 'package:flutter/material.dart';

import '../tabs/BottomNavigation.dart';
import '../tabs/TabNavigator.dart';

class HomeScreen extends StatefulWidget {
  @override
  const HomeScreen({super.key});

  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  var _currentTab = TabItem.Page1;

  final _navigatorKeys = {
    TabItem.Page1: GlobalKey<NavigatorState>(),
    TabItem.Page2: GlobalKey<NavigatorState>(),
    TabItem.Page3: GlobalKey<NavigatorState>(),
    TabItem.Page4: GlobalKey<NavigatorState>(),
  };

  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab) {
      /// 네비게이션 탭을 누르면, 해당 네비의 첫 스크린으로 이동!
      _navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
        !await _navigatorKeys[_currentTab]!.currentState!.maybePop();

        if (isFirstRouteInCurrentTab) {
          // 메인 화면이 아닌 경우
          if (_currentTab != TabItem.Page1) {
            // 메인 화면으로 이동
            _selectTab(TabItem.Page1);
            // 앱 종료 방지
            return false;
          }
        }

        /// 네비게이션 바의 첫번째 스크린인 경우, 앱 종료
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            _buildOffstageNavigator(TabItem.Page1),
            _buildOffstageNavigator(TabItem.Page2),
            _buildOffstageNavigator(TabItem.Page3),
            _buildOffstageNavigator(TabItem.Page4),
          ],
        ),
        bottomNavigationBar: BottomNavigation(
          currentTab: _currentTab,
          onSelectTab: _selectTab,
        ),
      ),
    );
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    /// (offstage == false) -> 트리에서 완전히 제거된다.
    return Offstage(
        offstage: _currentTab != tabItem,
        child: TabNavigator(
          navigatorKey: _navigatorKeys[tabItem],
          tabItem: tabItem,
        ));
  }
}