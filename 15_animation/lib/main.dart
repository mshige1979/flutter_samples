import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'アニメーション'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _top1 = -1000;
  double _top3 = 110;
  double _left3 = 30;
  double _top4 = 160;
  double _left4 = 30;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 10,
            left: 30,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_top1 <= -1000) {
                    _top1 = 0;
                  } else {
                    _top1 = -1000;
                  }
                });
              },
              child: Text("sample1"),
            ),
          ),
          Positioned(
            top: 60,
            left: 30,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("sample2"),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            top: _top3,
            left: _left3,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_top3 <= 110) {
                    _top3 = 500;
                  } else {
                    _top3 = 110;
                  }
                });
              },
              child: Text("sample3"),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            top: _top4,
            left: _left4,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_left4 <= 30) {
                    _left4 = 300;
                  } else {
                    _left4 = 30;
                  }
                });
              },
              child: Text("sample4"),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            top: _top1,
            left: 0,
            child: Container(
              width: size.width,
              height: size.height,
              color: Colors.amber,
              child: InkWell(
                onTap: () {
                  setState(() {
                    _top1 = -1000;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(),
                    TextButton(
                      child: Text("test"),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
