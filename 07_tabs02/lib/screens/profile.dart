import 'package:flutter/material.dart';

/**
 * プロフィールページ
 */
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('プロフィール'),
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
              child: Text('戻る'),
            ),
          ],
        ),
      ),
    );
  }
}
