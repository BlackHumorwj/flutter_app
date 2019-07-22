import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class MyRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "ddd",
      home: Scaffold(
        appBar: AppBar(
          title: Text("dddd"),
        ),
        body: Container(),
        bottomNavigationBar: BottomAppBar(
          child: Container(height: 50,),
        ),

      ),
      routes: <String, WidgetBuilder>{
        "/first": (BuildContext context) {
          return SecondPage();
        },
        "/sceond": (context) {
          return TextWidget("");
        }
      },
      initialRoute: "/fitst",
    );
  }
}
