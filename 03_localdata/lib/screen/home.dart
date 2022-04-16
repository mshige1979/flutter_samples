import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ホーム画面
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // テキストエリア用
  TextEditingController emailController = new TextEditingController(text: "");

  // ロード処理を行い、TextFieldへ反映
  void _load() async {
    debugPrint("_load called");
    // データを保存
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? _text = prefs.getString('data');
    emailController.text = _text != null ? _text : "";
  }

  // TextFieldの内容を保存
  void _save(String s) async {
    debugPrint("_save called");
    // データを保存
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('data', s);
  }

  @override
  void initState() {
    super.initState();
  }

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
              '下のLoad、Saveボタンをデータを取得、保存する。',
            ),
            Container(
             child: Padding(
               padding: EdgeInsets.all(10),
               // テキスト入力
               child: new TextField(
                 controller: emailController,
                 // 活性
                 enabled: true,
                 // キーボードタイプ
                 keyboardType: TextInputType.url,
                 // 入力数
                 maxLength: 10,
                 // １行
                 maxLines:1 ,

               ),
             ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: OutlinedButton(
                          onPressed: () {
                            debugPrint("load onPressed");
                            _load();
                          },
                          child: Text('Load'),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: OutlinedButton(
                          onPressed: () {
                            debugPrint("save onPressed");
                            _save(emailController.text);
                          },
                          child: Text('Save'),
                        ),
                      ),
                    ),
                  ],
                )
              )
            )
          ],
        ),
      ),
    );
  }
}
