import 'package:flutter/material.dart';

/// アプリバーのタイトル
class AppBarIcon extends StatelessWidget {
  // 親ウィジェットより渡された値を取得
  const AppBarIcon({
    Key? key,
  }) : super(key: key);

  // ウィジェット構成
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      child: Image.asset(
          "assets/images/home.png",
          fit: BoxFit.cover
      ),
    );
  }
}
