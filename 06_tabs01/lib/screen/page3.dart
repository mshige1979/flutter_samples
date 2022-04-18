import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Page3',
            ),
          ],
        ),
      ),
    );
  }
}
