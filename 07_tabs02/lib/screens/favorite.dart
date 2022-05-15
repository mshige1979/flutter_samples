import 'package:flutter/material.dart';

import 'favorite_detail.dart';
import '../widgets/app_bar_title.dart';

/**
 * お気に入りページ
 */
class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: AppBarTitle(title: "お気に入り"),
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
                      return FavoriteDetailPage();
                    },
                  ),
                );
              },
              child: Text('お気に入り詳細へ'),
            ),
          ],
        ),
      ),
    );
  }
}
