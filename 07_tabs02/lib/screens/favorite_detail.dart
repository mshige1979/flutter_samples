import 'package:flutter/material.dart';

/**
 * お気に入りページ
 */
class FavoriteDetailPage extends StatefulWidget {
  const FavoriteDetailPage({Key? key}) : super(key: key);

  @override
  State<FavoriteDetailPage> createState() => _FavoriteDetailPageState();
}

class _FavoriteDetailPageState extends State<FavoriteDetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('お気に入り詳細'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: OutlinedButton.styleFrom(),
              onPressed: () {
                debugPrint("load onPressed");
                // 前の画面へ戻る
                Navigator.of(context).pop();
              },
              child: Text('お気に入りへ'),
            ),
          ],
        ),
      ),
    );
  }
}
