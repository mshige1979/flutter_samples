import 'package:flutter/material.dart';

import 'notice.dart';

/**
 * ホームページ
 */
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ホーム'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: OutlinedButton.styleFrom(),
              onPressed: () {
                debugPrint("load onPressed");
                // お知らせ画面へ遷移
                Navigator.of(context).push<Widget>(
                  MaterialPageRoute(
                    builder: (context) {
                      return NoticePage();
                    },
                  ),
                );

              },
              child: Text('お知らせへ'),
            ),
          ],
        ),
      ),
    );
  }
}
