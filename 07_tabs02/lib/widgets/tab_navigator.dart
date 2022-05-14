import 'package:flutter/material.dart';
import 'package:tabs02/screens/home.dart';

import '../constants.dart';
import '../screens/favorite.dart';
import '../screens/setting.dart';

class TabNavigator extends StatelessWidget {
  const TabNavigator({
    Key? key,
    required this.tabItem,
    required this.routerName,
    required this.navigationKey,
  }) : super(key: key);

  final TabItem tabItem;
  final String routerName;
  final GlobalKey<NavigatorState>? navigationKey;

  @override
  Widget build(BuildContext context) {

    return Navigator(
      key: navigationKey,
      initialRoute: '/',
      onGenerateRoute: (settings) {
        return MaterialPageRoute<Widget> (
          builder: (context) {
            switch (routerName) {
              case "/":
              case "/home":
                return const HomePage();
              case "/favo":
                return const FavoritePage();
              case "/setting":
                return const SettingPage();
              default:
                return const HomePage();
            }
          },
        );
      },
    );
  }
}