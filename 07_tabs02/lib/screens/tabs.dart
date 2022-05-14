import 'package:flutter/material.dart';
import 'package:tabs02/screens/favorite.dart';
import 'package:tabs02/screens/home.dart';
import 'package:tabs02/screens/setting.dart';

/**
 * Home画面のタブ
 */
class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {

  int _currentIndex = 0;

  final tabs = <Widget>[
    HomePage(),
    FavoritePage(),
    SettingPage(),
  ];

  final items = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'ホーム',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.timeline),
      label: "Favo",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: '設定',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            IndexedStack(
              index: _currentIndex,
              children: tabs,
            ),
          ],
        ),
      bottomNavigationBar: _buildBttomNavigator(context)
    );
  }

  Widget _buildBttomNavigator(BuildContext context) {
    return BottomNavigationBar(
      items: items,
      currentIndex: _currentIndex,
      onTap: (index) {
        if (_currentIndex != index) {
          setState(() {
            _currentIndex = index;
          });
        }
      },
    );
  }
}

