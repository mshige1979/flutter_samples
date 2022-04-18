import 'package:flutter/material.dart';
import 'package:tabs01/screen/page1.dart';
import 'package:tabs01/screen/page2.dart';
import 'package:tabs01/screen/page3.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final _tab = <Tab> [
    Tab( text:'Page1', icon: Icon(Icons.directions_car)),
    Tab( text:'Page2', icon: Icon(Icons.directions_bike)),
    Tab( text:'Page3', icon: Icon(Icons.abc)),
  ];

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget._tab.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(
            tabs: widget._tab,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Page1(title: "aaaa"),
            Page2(title: "bbbb"),
            Page3(title: "cccc"),
          ],
        ),
      ),
    );
  }
}
