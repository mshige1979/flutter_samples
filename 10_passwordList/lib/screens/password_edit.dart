import 'package:flutter/material.dart';

class PasswordEditPage extends StatefulWidget {
  const PasswordEditPage({Key? key, this.title, this.password, this.edit})
      : super(key: key);

  final String? title;
  final String? password;
  final bool? edit;

  @override
  State<PasswordEditPage> createState() => _PasswordEditPageState();
}

class _PasswordEditPageState extends State<PasswordEditPage> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double buttonWidth = size.width / 2 - 50;

    return Scaffold(
      appBar: AppBar(
        title: const Text("パスワード編集"),
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
                      readOnly: false,
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
                    readOnly: false,
                    initialValue: widget.password,
                    obscureText: _isObscure,
                  ),
                ],
              ),
            ),
          )),
          Visibility(
            visible: widget.edit == true,
            child: Padding(padding: const EdgeInsets.all(20.0), child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  ElevatedButton(
                    child: Text('削除'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(buttonWidth, 50),
                    ),
                  ),
                  ElevatedButton(
                    child: Text('更新'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(buttonWidth, 50),
                    ),
                  ),
                ],
              ),
            )),
          ),
          Visibility(
            visible: widget.edit != true,
            child: Padding(padding: const EdgeInsets.all(20.0), child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: Text('登録'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(250, 50),
                    ),
                  ),
                ],
              ),
            )),
          ),

        ],
      ),
    );
  }
}
