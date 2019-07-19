//使用库

import 'dart:io';
import 'package:flutter_app/main.dart';


void main() {
  String _name = "jeeeee";

  //没有赋值都是bull  _私有
  String _named;

  print("这是什么鬼 Dart $_named");

  listMethod();

  X x = new X();
  x.run();
  x.xiao();
  x.xab();





}

class A {
  run() {
    print("跑");
  }
}

class B {
  xiao() {
    print("笑笑");
  }
}

///多继承
class X extends A with B{


  xab(){

    print("XAB");

  }




}




///集合
void listMethod() {
  //非固定长度
  var list = List();

  //添加
  for (int i = 0; i < 100; i++) {
    list.add(i);
  }

  //插入
  list.insert(99, "fdd");

  //条件删除
  list.removeWhere((f) => f.toString().length > 1);

  //条件保留
  list.retainWhere((f) => f.toString().length > 1);

  //遍历
  list.forEach((f) => printName(f));

  //这也可以的
  var testList = [true, "ddd", 2];
  testList.add(1.36);

  testList.forEach((f) {
    printName(f);
  });

  //for in 循环
  for (var str in testList) {}
}

///异常的捕获
void tryCatch() {
  try {} on OutOfMemoryError {
    //

  } on Exception catch (e) {
    print(" unknown exception  $e");
  } catch (e) {
    print("Something really unknown  $e");
  } finally {
    //....
  }
}

//函数 可选命名参数  可选
void printName(var name) {
  print("名字: $name");
}
