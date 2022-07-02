import 'package:flutter/material.dart';

class Sample1Page extends StatefulWidget {
  const Sample1Page({Key? key, required this.title, required this.mainAxisAlignment}) : super(key: key);

  final String title;
  final MainAxisAlignment mainAxisAlignment;

  @override
  State<Sample1Page> createState() => _Sample1PageState();
}

class _Sample1PageState extends State<Sample1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: widget.mainAxisAlignment,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(30.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
