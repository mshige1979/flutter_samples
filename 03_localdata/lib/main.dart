import 'package:flutter/material.dart';

// 個別ファイル
import "package:my_app01/screen/home.dart";

// メイン処理
void main() {
  runApp(const MyApp());
}

// メインウィジェット
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'アプリデータの読み込み、保存を行う'),
    );
  }
}

