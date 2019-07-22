import 'package:flutter/material.dart';

import 'SecondPage.dart';

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
      home: TextWidget("TextWidget"),
    );
  }
}

class TextWidget extends StatelessWidget {
  String title;

  TextWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(title),
        leading: Icon(Icons.add),
        actions: <Widget>[Icon(Icons.share), Icon(Icons.home)],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "Basic Widget",
            style: TextStyle(
                fontSize: 16, color: Colors.amber, fontStyle: FontStyle.normal),
          ),
          Image.network(
            "https://upload-images.jianshu.io/upload_images/1417629-53f7d0902457cbe6.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240",
            height: 200,
            width: 200,
            fit: BoxFit.contain,
          ),
          RaisedButton(
            onPressed: () {
              print("点击");
            },
            color: Colors.amber,
            child: Text(
              "RaiseButton",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Row(
            children: <Widget>[
              Icon(Icons.access_alarm),
              Icon(Icons.access_time),
              Icon(Icons.attach_money),
              Expanded(
                child: Text("这是weight"),
                flex: 1,
              ),
              Expanded(
                child: RaisedButton(
                  onPressed: () {
                    //跳转
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SecondPage();
                    }));
                  },
                  child: Text("跳转"),
                ),
                flex: 3,
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(40),
            decoration: BoxDecoration(color: Colors.amber),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text("tab1",style: TextStyle(fontSize: 18,color: Colors.black),),
              flex: 1,
            ),
            Expanded(
              child: Text("tab2"),
              flex: 1,
            ),
            Expanded(
              child: Text("tab3"),
              flex: 1,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Center(
          child: Text("抽屉"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}

class SecondPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("第二页"),
      ),
      body: RaisedButton(
        onPressed: () {
          //返回
          Navigator.pop(context);
        },
        child: Text("返回操作"),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //可选命名参数方法
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'text',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text("这是啥"),
            )
          ],
        ),
      ),
    );
  }
}
