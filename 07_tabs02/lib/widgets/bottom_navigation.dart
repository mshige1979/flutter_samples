import 'package:flutter/material.dart';

import '../constants.dart';

const tabTitle = <TabItem, String>{
  TabItem.home: 'ホーム',
  TabItem.favo: 'お気に入り',
  TabItem.setting: '設定',
};
const tabIcon = <TabItem, IconData>{
  TabItem.home: Icons.home,
  TabItem.favo: Icons.favorite,
  TabItem.setting: Icons.settings,
};

/// ボトムタブ
class BottomNavigation extends StatelessWidget {
  // 親ウィジェットより渡された値を取得
  const BottomNavigation({
    required Key key,
    required this.currentTab,
    this.onSelect,
  }) : super(key: key);

  final TabItem currentTab;
  final dynamic onSelect;

  // ウィジェット構成
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        // 位置
        currentIndex: currentTab.index,

        // 選択時のラベル
        selectedLabelStyle: TextStyle(color: Colors.blue),
        // 未選択時のラベル
        unselectedLabelStyle: TextStyle(color: Colors.black26),

        // タブ要素
        items: <BottomNavigationBarItem>[
          bottomItem(
            context,
            tabItem: TabItem.home,
          ),
          bottomItem(
            context,
            tabItem: TabItem.favo,
          ),
          bottomItem(
            context,
            tabItem: TabItem.setting,
          ),
        ],
        //
        type: BottomNavigationBarType.fixed,
        // タップされた際の処理
        onTap: (index) {
          //
          this.onSelect(TabItem.values[index]);
        });
  }

  // タブ要素を生成する
  BottomNavigationBarItem bottomItem(
    BuildContext context, {
    required TabItem tabItem,
  }) {
    return BottomNavigationBarItem(
      icon: Icon(
        // アイコンをMAP化して取得
        tabIcon[tabItem],
        // 選択時のアイコンの色を変更
        color: currentTab == tabItem ? Colors.blue : Colors.black26,
      ),
      // ラベルをMAP化して取得
      label: tabTitle[tabItem],
    );
  }
}
