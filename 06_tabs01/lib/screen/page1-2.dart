import 'package:flutter/material.dart';

class Page1_2 extends StatefulWidget {
  const Page1_2({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Page1_2> createState() => _Page1_2State();
}

class _Page1_2State extends State<Page1_2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Page1_2',
            ),
          ],
        ),
      ),
    );
  }
}
