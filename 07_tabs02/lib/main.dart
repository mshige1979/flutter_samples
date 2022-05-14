import 'package:flutter/material.dart';

import 'screens/init.dart';
import 'screens/login.dart';
import 'screens/tabs.dart';

void main() {
  runApp(const MyApp());
}

///
/// Bottomタブ用
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // デバッグ画面を消す
      debugShowCheckedModeBanner: false,
      // これは何に使うの？
      title: 'Flutter Demo',
      // 基本デザイン
      theme: ThemeData(
        // 配色？
        primarySwatch: Colors.blue,
        // 画面遷移のイメージ
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: CupertinoPageTransitionsBuilder(), // iOS風
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: "/",
      routes: {
        "/": (_) => const InitPage(),
        "/login": (_) => const LoginPage(),
        "/home": (_) => const TabsPage()
      },
    );
  }
}
