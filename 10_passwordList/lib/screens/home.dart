import 'package:flutter/material.dart';
import 'package:password_list/screens/password_detail.dart';

import "../passwordItem.dart";
import 'password_edit.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<PasswordItem> passwordList = <PasswordItem>[
    PasswordItem("1111", "bbbbbb"),
    PasswordItem("2222", "bbbbbb"),
    PasswordItem("3333", "bbbbbb"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                title: Text(passwordList[index].title.toString()),
                leading: const Icon(Icons.vpn_key),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PasswordDetailPage(
                        title: passwordList[index].title,
                        password: passwordList[index].password);
                  }));
                },
              ),
              const Divider(),
            ],
          );
        },
        itemCount: passwordList.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return PasswordEditPage();
          }));
        },
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
