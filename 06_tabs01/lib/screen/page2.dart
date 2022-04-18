import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Page2',
            ),
          ],
        ),
      ),
    );
  }
}
