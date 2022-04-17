import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var _size = MediaQuery.of(context).size;
    debugPrint("width : ${_size.width}, 70%: ${_size.width * 0.7}");
    debugPrint("height: ${_size.height}");

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'ダイアログサンプル',
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(minimumSize: Size(_size.width * 0.7, 40)),
                    onPressed: () {
                      debugPrint("load onPressed");

                      // ダイアログ表示
                      showDialog(
                        context: context,
                        builder: (context) {
                          return SimpleDialog(
                              title: Text("SimpleDialogタイトル"),
                              children: <Widget>[
                                // コンテンツ領域
                                SimpleDialogOption(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text("１項目目"),
                                ),
                                SimpleDialogOption(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text("２項目目"),
                                ),
                                SimpleDialogOption(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text("３項目目"),
                                ),
                                SimpleDialogOption(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text("４項目目"),
                                ),
                                SimpleDialogOption(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text("５項目目"),
                                ),
                              ],
                          );
                        },
                      );
                    },
                    child: Text('SimpleDialog'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(minimumSize: Size(_size.width * 0.7, 40)),
                    onPressed: () {
                      debugPrint("load onPressed");

                      // アラートダイアログ用
                      showDialog(
                        context: context,
                        builder: (_) {
                          return AlertDialog(
                            title: Text("AlertDialogタイトル"),
                            content: Text("メッセージメッセージメッセージメッセージメッセージメッセージ"),
                            actions: <Widget>[
                              // ボタン領域
                              TextButton(
                                child: const Text("Cancel"),
                                onPressed: () => Navigator.pop(context),
                              ),
                              TextButton(
                                child: const Text("OK"),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('AlertDialog'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(minimumSize: Size(_size.width * 0.7, 40)),
                    onPressed: () {
                      debugPrint("load onPressed");

                      // アラートダイアログ用
                      showDialog(
                        context: context,
                        builder: (context) => Column(
                          children: <Widget>[
                            AlertDialog(
                              title: Text("AlertDialog(Custom)タイトル"),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: <Widget>[
                                    Column(
                                      children: [
                                        const Text("aaaaaaaaaaaaaaa66666666666666666666666666666666666666666666666666666666aaa"),
                                        const Text("aaaaaaaaaaaaaaaaaa"),
                                        const Text("aaaaaaaaaaaaaaaaaa"),
                                        const Text("aaaaaaaaaaaaaaaaaa"),
                                        const Text("aaaaaaaaaaaaaaaaaa"),
                                      ],
                                      // コンテンツ
                                    ),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text("OK"),
                                  onPressed: () => Navigator.pop(context),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text('AlertDialog(Custom)'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(minimumSize: Size(_size.width * 0.7, 40)),
                    onPressed: () {
                      debugPrint("load onPressed");

                      // アバウトダイアログ用
                      showAboutDialog(
                        context: context,
                        applicationIcon: Icon(Icons.photo),
                        applicationName: "アプリ名",
                        applicationVersion: "2.0.1",
                        applicationLegalese: "あいうえお",
                      );
                    },
                    child: Text('AboutDialog'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
