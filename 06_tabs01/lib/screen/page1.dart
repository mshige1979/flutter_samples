import 'package:flutter/material.dart';
import 'package:tabs01/screen/page1-2.dart';
import 'package:tabs01/screen/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  Widget build(BuildContext context) {

    var _size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Page1',
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(minimumSize: Size(_size.width * 0.7, 40)),
                    onPressed: () {
                      debugPrint("nav onPressed");
                      Navigator.push(context, MaterialPageRoute(
                        // 実際に表示するページ(ウィジェット)を指定する
                          builder: (context) => Page2(title: "aaaaa")
                      ));
                    },
                    child: Text('page1-2'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
