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
    return Scaffold(
        appBar: AppBar(
        title: Text(widget.title),
    ),
    // 以下を追加するとAppBarにハンバーガーメニューが追加される
    drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('メニュー１'),
              onTap: (){
                debugPrint("xxxx");
                Navigator.pop(context); //Drawerを閉じる
              },
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text('メニュー2'),
              onTap: (){
                debugPrint("xxxx");
                Navigator.pop(context); //Drawerを閉じる
              },
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text('メニュー3'),
              onTap: (){
                debugPrint("xxxx");
                Navigator.pop(context); //Drawerを閉じる
              },
            ),
            Divider(
              thickness: 2,
            ),
          ],
        ),
    ),
    // body
    body: Center(
    child: Column(

    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    const Text(
    'ハンバーガーアイコン押下でドロワーメニューを開く',
    ),

    ],
    ),
    ),
    );
  }
}
