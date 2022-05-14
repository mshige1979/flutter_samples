import 'package:flutter/material.dart';
import 'profile.dart';

/**
 * 設定ページ
 */
class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('設定'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: OutlinedButton.styleFrom(),
              onPressed: () {
                debugPrint("load onPressed");
                // お気に入り詳細画面へ遷移
                Navigator.of(context).push<Widget>(
                  MaterialPageRoute(
                    builder: (context) {
                      return const ProfilePage();
                    },
                  ),
                );
              },
              child: Text('プロフィールへ'),
            ),
            ElevatedButton(
              style: OutlinedButton.styleFrom(),
              onPressed: () {
                debugPrint("load onPressed");
              },
              child: Text('ログアウト'),
            ),
          ],
        ),
      ),
    );
  }
}
