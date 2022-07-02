import 'package:flutter/material.dart';
import './sample1.dart';

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
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const Sample1Page(
                            title: 'a',
                            mainAxisAlignment: MainAxisAlignment.start,
                          );
                        },
                      ),
                    );
                  },
                  child: const Text("TextField (Top) "))),
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const Sample1Page(
                            title: 'a',
                            mainAxisAlignment: MainAxisAlignment.center,
                          );
                        },
                      ),
                    );
                  },
                  child: const Text("TextField (Center) "))),
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const Sample1Page(
                            title: 'a',
                            mainAxisAlignment: MainAxisAlignment.end,
                          );
                        },
                      ),
                    );
                  },
                  child: const Text("TextField (End) "))),
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext dialogContext) {
                          return AlertDialog(
                            content: Container(
                              height: 100,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    TextField(),
                                    Text(
                                      "How Would You Rate Our App?",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ]),
                            ),
                          );
                        });
                  },
                  child: const Text("dialog"))),
        ],
      ),
    );
  }
}
