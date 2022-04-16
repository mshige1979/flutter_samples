import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ホーム画面
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // テキストエリア用
  String _text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // カラムウェジェット（縦に並ぶ）
        child: Column(
          // 中央よせにする
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '下の＋ボタンを押したらトーストが出ます。',
            ),
            Container(
             child: Padding(
               padding: EdgeInsets.all(10),
               // テキスト入力
               child: new TextField(
                 // 活性
                 enabled: true,
                 // キーボードタイプ
                 keyboardType: TextInputType.url,
                 // 入力数
                 maxLength: 10,
                 // １行
                 maxLines:1 ,
                 // 入力時のイベント
                 onChanged: (String e) {
                   setState(() {
                     _text = e;
                   });
                 },
               ),
             ),
            )
          ],
        ),
      ),
      // フロートボタン用
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Fluttertoast.showToast(
            // 表示メッセージ
            msg: _text.length <= 0 ? "メッセージなし" : _text,
            // 表示位置（androidではデフォルトBOTTOM、TOPは効く、それ以外はWeb版のみかも）
            gravity: ToastGravity.TOP,
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
