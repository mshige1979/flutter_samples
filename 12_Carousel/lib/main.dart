import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
      home: const MyHomePage(title: 'カルーセルサンプル'),
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
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final imageList = [
    Card(
      child: Container(
        height: 200,
        width: 200,
        color: Colors.blue,
      ),
    ),
    Card(
      child: Container(
        height: 200,
        width: 200,
        color: Colors.green,
      ),
    ),
    Card(
      child: Container(
        height: 200,
        width: 200,
        color: Colors.yellow,
      ),
    ),
    Card(
      child: Container(
        height: 200,
        width: 200,
        color: Colors.pink,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Scaffold(
        body: Center(
          child: Column(children: [
            CarouselSlider(
              items: imageList,
              carouselController: _controller,
              options: CarouselOptions(
                  // 初期位置
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  // 自動
                  autoPlay: false,
                  // 左右の大きさが微妙に変化する
                  enlargeCenterPage: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin:
                        const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Flexible(
                child: ElevatedButton(
                  onPressed: () => _controller.previousPage(),
                  child: const Text('<-'),
                ),
              ),
              Flexible(
                child: ElevatedButton(
                  onPressed: () => _controller.nextPage(),
                  child: const Text('->'),
                ),
              ),
            ])
          ]),
        ),
      ),
    );
  }
}
