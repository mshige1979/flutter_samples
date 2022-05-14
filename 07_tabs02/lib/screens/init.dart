import 'package:flutter/material.dart';

/**
 * 初期ページ
 */
class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {

  @override
  void initState() {
    super.initState();

    // 初期処理
    init();
  }

  // 初期処理
  void init() async {
    print('start');
    await Future.delayed(Duration(seconds: 1));
    print('end');
    // ログイン画面へ遷移
    Navigator.of(context).pushReplacementNamed("/login");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('初期画面'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text("初期化処理中")
          ],
        ),
      ),
    );
  }
}
