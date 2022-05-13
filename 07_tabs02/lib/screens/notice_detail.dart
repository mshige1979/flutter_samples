import 'package:flutter/material.dart';

/**
 * お知らせ詳細ページ
 */
class NoticePage extends StatefulWidget {
  const NoticePage({Key? key}) : super(key: key);

  @override
  State<NoticePage> createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('お知らせ詳細'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          ],
        ),
      ),
    );
  }
}
