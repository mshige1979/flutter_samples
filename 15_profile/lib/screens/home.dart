import 'package:flutter/material.dart';
import 'package:profile/screens/profile1.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextButton(onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) {
                return Profile1Page(title: "sample1");
              })
            );
          }, child: Text("sample1"))
        ],
      ),
    );
  }
}
