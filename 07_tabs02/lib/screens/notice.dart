import 'package:flutter/material.dart';

import 'notice_detail.dart';

/**
 * お知らせページ
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
        title: Text('お知らせ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: OutlinedButton.styleFrom(),
              onPressed: () {
                debugPrint("load onPressed");
                // ホーム画面へ遷移
                Navigator.of(context).push<Widget>(
                  MaterialPageRoute(
                    builder: (context) {
                      return NoticeDetailPage();
                    },
                  ),
                );
              },
              child: Text('お知らせ詳細へ'),
            ),
            ElevatedButton(
              style: OutlinedButton.styleFrom(),
              onPressed: () {
                debugPrint("load onPressed");
                // 戻る
                Navigator.of(context).pop();
              },
              child: Text('戻る'),
            ),
          ],
        ),
      ),
    );
  }
}
