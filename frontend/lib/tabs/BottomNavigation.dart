import 'package:flutter/material.dart';
import 'package:frontend/tabs/navbar_items.dart';
import 'package:frontend/tabs/tab_items.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({required this.currentTab, required this.onSelectTab});
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(TabItem.Page1),
        _buildItem(TabItem.Page2),
        _buildItem(TabItem.Page3),
        _buildItem(TabItem.Page4),
      ],
      onTap: (index) => onSelectTab(
        TabItem.values[index],
      ),
      currentIndex: currentTab.index,
      selectedItemColor: Colors.amber,
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    return navbarItems[tabIdx[tabItem]!];
  }
}