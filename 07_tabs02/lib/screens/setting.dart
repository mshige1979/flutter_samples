import 'package:flutter/material.dart';
import 'package:tabs02/screens/login.dart';
import '../widgets/app_bar_icon.dart';
import 'profile.dart';
import '../services/navigation.dart';
import '../widgets/app_bar_title.dart';

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
          title: AppBarTitle(title: "設定"),
          leading: AppBarIcon(),
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
                var _context = Navigation.getInstance().rootNavigatorKey.currentState?.context;
                if (_context != null) {
                  //Navigator.of(_context!).pushReplacementNamed("/login");
                  //Navigator.popUntil(_context!, ModalRoute.withName("/login"));
                  //Navigator.popUntil(_context!, ModalRoute.withName("/login"));
                  //Navigator.of(_context!).restorablePopAndPushNamed("/login");
                  //Navigator.of(_context!).pop();
                  Navigator.pushReplacement(_context, MaterialPageRoute(
                    builder: (context) => LoginPage(),
                    //以下を追加
                    fullscreenDialog: true,
                  ));
                }
              },
              child: Text('ログアウト'),
            ),
          ],
        ),
      ),
    );
  }
}
