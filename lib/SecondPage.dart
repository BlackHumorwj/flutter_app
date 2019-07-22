import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyState();
  }
}

class _MyState extends State<MyPage> {
  int _selectIndex = 0;

  //定义三个Tab view 内容
  static const List<Widget> _list = <Widget>[
    Text(
      "tab1",
      textDirection: TextDirection.ltr,
    ),
    Text("tab2"),
    Text("tab3")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("主页面"),
      ),
      body: Center(
        child: _list.elementAt(_selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页"),
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(icon: Icon(Icons.share), title: Text("报表")),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money), title: Text("设置")),
        ],
        currentIndex: _selectIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectIndex = value;
    });
  }
}
