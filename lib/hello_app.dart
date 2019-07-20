import 'package:flutter/material.dart'; //导入material 包


void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "新鲜的应用", theme: ThemeData.dark(), home: MyHomePage(title:"标题"),);
  }


}

class MyHomePage extends StatefulWidget {

  final String title;

 MyHomePage({Key key,this.title}):super(key:key);



  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MyHomePageState();
  }


}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(appBar: AppBar(title: Text(widget.title),),
      body: Center(child: Column(children: <Widget>[
        Text("hello world"),
        Text("hello 2")
      ],),),
    );
  }
}
