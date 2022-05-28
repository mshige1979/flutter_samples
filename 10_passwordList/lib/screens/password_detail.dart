import 'package:flutter/material.dart';

class PasswordDetailPage extends StatefulWidget {
  const PasswordDetailPage({Key? key, this.title, this.password})
      : super(key: key);

  final String? title;
  final String? password;

  @override
  State<PasswordDetailPage> createState() => _PasswordDetailPageState();
}

class _PasswordDetailPageState extends State<PasswordDetailPage> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("パスワード詳細"),
      ),
      body: Stack(
        children: [
          Container(
              child: Form(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('タイトル'),
                  TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'タイトル',
                      ),
                      validator: (String? value) {
                        return null;
                      },
                      readOnly: true,
                      initialValue: widget.title),
                  Divider(),
                  Text('パスワード'),
                  TextFormField(
                    decoration: InputDecoration(
                      /* ここからアイコンの設定 */
                      suffixIcon: IconButton(
                        icon: Icon(_isObscure == true
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                    ),
                    validator: (String? value) {
                      return null;
                    },
                    readOnly: true,
                    initialValue: widget.password,
                    obscureText: _isObscure,
                  ),
                ],
              ),
            ),
          )),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                child: Text('編集'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(250, 50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
