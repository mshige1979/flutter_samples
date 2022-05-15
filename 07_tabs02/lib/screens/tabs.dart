import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/tab_navigator.dart';

/// Home画面のタブ
class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {

  // 指定タブインデックス
  TabItem _currentTab = TabItem.home;
  // タブのナビゲーションのMAP
  final Map<TabItem, GlobalKey<NavigatorState>> _navigatorKeys = {
    TabItem.home: GlobalKey<NavigatorState>(),
    TabItem.favo: GlobalKey<NavigatorState>(),
    TabItem.setting: GlobalKey<NavigatorState>(),
  };

  // 画面構成
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            _buildTabItem(
              TabItem.home,
              '/home',
            ),
            _buildTabItem(
              TabItem.favo,
              '/favo',
            ),
            _buildTabItem(
              TabItem.setting,
              '/setting',
            ),
          ],
        ),
      bottomNavigationBar: BottomNavigation(
        key: UniqueKey(),
        currentTab: _currentTab,
        onSelect: onSelect,
      )
    );
  }

  // 各タブコンテンツの表示制御
  Widget _buildTabItem(
      TabItem tabItem,
      String root,
      ) {
    return Offstage(
      // 選択対象のみ表示する
      offstage: _currentTab != tabItem,
      child: TabNavigator(
        navigationKey: _navigatorKeys[tabItem],
        tabItem: tabItem,
        routerName: root,
      ),
    );
  }

  // ボトムタブをタップした際の挙動
  void onSelect(TabItem tabItem) {
    if (_currentTab == tabItem) {
      _navigatorKeys[tabItem]?.currentState?.popUntil((route) => route.isFirst);
    } else  {
      // 選択タブを更新
      setState(() {
        _currentTab = tabItem;
      });
      _navigatorKeys[tabItem]?.currentState?.popUntil((route) => route.isFirst);
    }
  }

}

