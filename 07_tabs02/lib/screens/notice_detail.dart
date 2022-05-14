import 'package:flutter/material.dart';

/**
 * お知らせ詳細ページ
 */
class NoticeDetailPage extends StatefulWidget {
  const NoticeDetailPage({Key? key}) : super(key: key);

  @override
  State<NoticeDetailPage> createState() => _NoticeDetailPageState();
}

class _NoticeDetailPageState extends State<NoticeDetailPage> {

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
            ElevatedButton(
              style: OutlinedButton.styleFrom(),
              onPressed: () {
                debugPrint("load onPressed");
                // 戻る
                Navigator.of(context).pop();
              },
              child: Text('お知らせへ'),
            ),
          ],
        ),
      ),
    );
  }
}
