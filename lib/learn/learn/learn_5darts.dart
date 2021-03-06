import 'package:flutter/material.dart';

import 'learn_1datatype.dart';
import 'learn_2function.dart';
import 'learn_4oop.dart';

void main2() {
  runApp(DartStudy());
}


class DartStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _oopLearn();
    return MaterialApp(
      title: 'Flutter Dart 语法学习',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }


  void _oopLearn(){
     Logger log1 = new Logger();
     Logger log2 = new Logger();
     Logger log3 = new Logger();

     print(log1 == log2);
     print(log3 == log2);

     //实例化
     Student s2 = Student('北大', 'Tom', 16, city: '11');
     s2.name;

     //实例化
     LearnFlutter flutter = LearnFlutter();
     flutter.study();

     TestFunction learn = TestFunction();
     learn.start();
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child:ListView(

           children:<Widget>[
              DataType()
           ]

        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
