import 'package:flutter/material.dart';

void main() {
  //runApp方法是Flutter框架的入口
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    //应用的根Widget
    return MaterialApp(
      //为在任务管理窗口中所显示的应用名字
      title: "应用的名称",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //为应用默认显示的界面widget
      home: MyHomePage(title: "title 标题"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //可选命名参数方法
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState(){
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(
            //调用匿名方法
            () {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Material Design布局结构的基本实现
    //内部包含了appBar和body
    return Scaffold(
      //appBar为应用程序栏
      appBar: AppBar(
        title: Text(widget.title),
      ),
      //通俗来讲就是屏幕的大部分
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text("这是啥"),
            )

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
