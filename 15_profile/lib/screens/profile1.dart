import 'package:flutter/material.dart';

class Profile1Page extends StatefulWidget {
  const Profile1Page({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Profile1Page> createState() => _Profile1PageState();
}

class _Profile1PageState extends State<Profile1Page> {
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
          Center(
            child: Stack(
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/image1.png"),
                    ),
                    border: Border.all(color: Colors.grey, width: 3),
                    borderRadius: BorderRadius.circular(300),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(80),
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.camera_alt),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          _buildFormItem(field: "名前", value: "山田　太郎"),
          _buildFormItem(field: "住所", value: "111-2222 東京都大田区1-2-4 アパート123号室"),
          _buildFormItem(field: "電話番号", value: "00-1111-2222"),
          _buildFormItem(field: "生年月日", value: "2022年12月23日"),
        ],
      ),
    );
  }

  // ラベルと値のインラインフォーム
  Widget _buildFormItem(
      {required String field, double? fieldSize, required String value}) {
    // ignore: constant_identifier_names
    const double FONT_SIZE = 14;

    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ラベル
              SizedBox(
                width: fieldSize ?? 100,
                child: Text(field,
                    style: const TextStyle(
                        fontSize: FONT_SIZE, fontWeight: FontWeight.bold)),
              ),
              // 区切り
              const SizedBox(
                width: 20,
                child: Center(
                  child: Text(
                    ":",
                    style: TextStyle(fontSize: FONT_SIZE),
                  ),
                ),
              ),
              // 値
              Flexible(
                child: Text(value, style: const TextStyle(fontSize: FONT_SIZE)),
              )
            ],
          ),
          const Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
