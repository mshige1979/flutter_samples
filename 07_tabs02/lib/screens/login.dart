import 'package:flutter/material.dart';

/**
 * ログインページ
 */
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {

    // 画面のサイズを取得
    final Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: OutlinedButton.styleFrom(minimumSize: Size(_size.width * 0.7, 40)),
              onPressed: () {
                debugPrint("load onPressed");
                // ホーム画面へ遷移
                Navigator.of(context).pushReplacementNamed("/home");
              },
              child: Text('ログイン'),
            ),
          ],
        ),
      ),
    );
  }
}
