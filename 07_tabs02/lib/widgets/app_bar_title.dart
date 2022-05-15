import 'package:flutter/material.dart';

/// アプリバーのタイトル
class AppBarTitle extends StatelessWidget {
  // 親ウィジェットより渡された値を取得
  const AppBarTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  // ウィジェット構成
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(title)
        ],
      ),
    );
  }
}
