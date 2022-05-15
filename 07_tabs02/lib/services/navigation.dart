import 'package:flutter/material.dart';

class Navigation {
  //singleton
  static final _instance = Navigation._internal();
  Navigation._internal();
  static Navigation getInstance() {
    return _instance;
  }

  //root state
  GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
}