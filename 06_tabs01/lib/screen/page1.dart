import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Page1',
            ),
          ],
        ),
      ),
    );
  }
}
