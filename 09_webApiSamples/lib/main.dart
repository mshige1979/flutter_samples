import 'package:flutter/material.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:http/http.dart';

import "server.dart";
import 'service/api_client.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    startServer();
  }

  Future<void> startServer() async {
    final service = Api();
    final server = await shelf_io.serve(service.handler, 'localhost', 3000);
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
            Container(
              child: ElevatedButton(
                onPressed: () async {
                  final api = ApiClient();
                  final res = await api.get("/api/messages",
                      headers: <String, String>{"api-key": "aaaaaa"})
                  as Response;
                  print("status: ${res.statusCode}");
                  print("body: ${res.body}");
                },
                child: Text('GET /api/messages'),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () async {
                  final api = ApiClient();
                  final res = await api.get("/api/users",
                      headers: <String, String>{"api-key": "aaaaaa"})
                  as Response;
                  print("status: ${res.statusCode}");
                  print("body: ${res.body}");
                },
                child: Text('GET /api/users'),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () async {
                  final api = ApiClient();
                  final res = await api.get("/api/user/1",
                          headers: <String, String>{"api-key": "aaaaaa"})
                      as Response;
                  print("status: ${res.statusCode}");
                  print("body: ${res.body}");
                },
                child: Text('GET /api/user/1'),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () async {
                  final api = ApiClient();
                  final res = await api.delete("/api/user/1",
                          headers: <String, String>{"api-key": "aaaaaa"})
                      as Response;
                  print("status: ${res.statusCode}");
                  print("body: ${res.body}");
                },
                child: Text('DELETE /api/user/1'),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () async {
                  final api = ApiClient();
                  final res = await api.post("/api/user",
                      headers: <String, String>{"api-key": "aaaaaa"},
                      body: <String, String>{"aaa": "111", "bbb": "222"})
                  as Response;
                  print("status: ${res.statusCode}");
                  print("body: ${res.body}");
                },
                child: Text('POST /api/user'),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () async {
                  final api = ApiClient();
                  final res = await api.put("/api/user/1",
                      headers: <String, String>{"api-key": "aaaaaa"},
                      body: <String, String>{"aaa": "333", "bbb": "444"})
                  as Response;
                  print("status: ${res.statusCode}");
                  print("body: ${res.body}");
                },
                child: Text('PUT /api/user/1'),
              ),
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
