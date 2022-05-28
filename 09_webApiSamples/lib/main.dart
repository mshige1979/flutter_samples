import 'package:flutter/material.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

import "server.dart";
import 'service/api.dart';
import 'models/user/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    startServer();
  }

  Future<void> startServer() async {
    final service = ApiServer();
    await shelf_io.serve(service.handler, 'localhost', 3000);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: () async {
                final api = Api();
                final res = await api.getMessages();
                debugPrint(res.status);
                debugPrint(res.list.toString());
              },
              child: const Text('GET /api/messages'),
            ),
            ElevatedButton(
              onPressed: () async {
                final api = Api();
                final res = await api.getUsers();
                debugPrint(res.status);
                debugPrint(res.list.toString());
              },
              child: const Text('GET /api/users'),
            ),
            ElevatedButton(
              onPressed: () async {
                final api = Api();
                final res = await api.getUser(1);
                debugPrint(res.status);
                debugPrint(res.user.toString());
              },
              child: const Text('GET /api/user/1'),
            ),
            ElevatedButton(
              onPressed: () async {
                final api = Api();
                final res = await api.deleteUser(1);
                debugPrint(res.status);
                debugPrint(res.user.toString());
              },
              child: const Text('DELETE /api/user/1'),
            ),
            ElevatedButton(
              onPressed: () async {
                final api = Api();
                final res = await api.postUser(const User(id: 1, name: "1111"));
                debugPrint(res.status);
                debugPrint(res.user.toString());
              },
              child: const Text('POST /api/user'),
            ),
            ElevatedButton(
              onPressed: () async {
                final api = Api();
                final res = await api.putUser(const User(id: 1, name: "1111"));
                debugPrint(res.status);
                debugPrint(res.user.toString());
              },
              child: const Text('PUT /api/user/1'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
